# Create new storage bucket in the EU multi-region (accessible at https://storage.cloud.google.com/<HEX>-static-website-bucket/index.html)
# and settings for main_page_suffix and not_found_page
resource "random_id" "bucket_prefix" {  # To make a unique bucket name
  byte_length = 8
}

resource "google_storage_bucket" "static_website" {
  project       = var.project_id
  name          = "${random_id.bucket_prefix.hex}-static-website-bucket"
  location      = "EU"
  storage_class = "STANDARD"
  website {
    main_page_suffix = "index.html"
  }
}

# Upload a simple index.html page to the bucket
resource "google_storage_bucket_object" "indexpage" {
  name         = "index.html"
  content      = "<center><h1>hello cloud !</h1></center>"
  content_type = "text/html"
  bucket       = google_storage_bucket.static_website.id
}

# Make bucket public by granting allUsers READER access
resource "google_storage_bucket_access_control" "public_rule" {
  bucket = google_storage_bucket.static_website.id
  role   = "READER"
  entity = "allUsers"
}
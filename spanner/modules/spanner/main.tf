resource "google_spanner_instance" "main_instance" {
  config       = "regional-us-central1"
  display_name = "first-terraform-instance"
  num_nodes    = 5
}

resource "google_spanner_database" "database" {
  instance = google_spanner_instance.main_instance.name
  name     = "my-first-database"
}
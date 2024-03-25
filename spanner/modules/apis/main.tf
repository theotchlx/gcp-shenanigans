# Enabling Resource Manager API
resource "google_project_service" "resman_api" {
  project = var.project_id
  service = "cloudresourcemanager.googleapis.com"
}

# Enabling the Spanner API. Must come after Resource Manager API.
resource "google_project_service" "spanner_api" {
  project = var.project_id
  service = "spanner.googleapis.com"
}

// Recently enabled APIs may fail an Apply, as they need a few seconds/minutes to propagate to the Terraform systems.
// That is, wait 5 seconds and apply again.
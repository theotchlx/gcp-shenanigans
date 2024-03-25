# Enabling Resource Manager API - CRUD for GCP resource containers
resource "google_project_service" "resman_api" {
  project = var.project_id
  service = "cloudresourcemanager.googleapis.com"
}

# Enabling GKE API
resource "google_project_service" "gke_api" {
  project = var.project_id
  service = "container.googleapis.com"

  disable_dependent_services = true  # Services that are enabled and which depend on this service will also be disabled when this service is destroyed.
}

# GKE cluster
resource "google_container_cluster" "gke_cluster" {
  name               = var.cluster_name
  location           = var.zone

  # Default node pool removed after creation
  remove_default_node_pool = true
  initial_node_count       = 1
}

# Separately managed node pool to replace the removed default node pool
resource "google_container_node_pool" "preemptible_nodes" {
  name       = "first-node-pool"
  cluster    = google_container_cluster.gke_cluster.id
  node_count = var.node_count

  node_config {
    preemptible  = true  # Preemptible VMs cost less, and GKE will manage them if preemption occurs.
    machine_type = var.machine_type
    disk_size_gb = 15

    # VMs service account
    service_account = var.service_account
    oauth_scopes = [  # Define API access for the nodes
      "https://www.googleapis.com/auth/cloud-platform" # See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
    ]
  }
}

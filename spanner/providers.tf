terraform {
  required_version = ">= 0.12"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 5.17.0"
    }
  }
}

provider "google" {
  project     = var.project_id
  credentials = file(var.credentials_file)
}

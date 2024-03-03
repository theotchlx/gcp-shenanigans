variable "project_id" {
  description = "Google Cloud project ID"
  type        = string
  default     = "your-project-id"
}

variable "region" {
  description = "Resources creationg region"
  type        = string
  default     = "europe-west1"
}

variable "zone" {
  description = "Resources creation zone"
  type        = string
  default     = "europe-west1-b"
}

variable "cluster_name" {
  description = "GKE cluster name"
  type        = string
  default     = "first-cluster"
}

variable "node_count" {
  description = "GKE cluster node quantity"
  type        = number
  default     = 2
}

variable "machine_type" {
  description = "GKE nodes machine type"
  type        = string
  default     = "n1-standard-1"
}

variable "service_account" {
  description = "Terraform's service account"
  type        = string
  default     = "your-service-account-email"
}
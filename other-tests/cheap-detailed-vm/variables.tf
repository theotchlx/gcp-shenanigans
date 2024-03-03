variable "project_id" {
  description = "Google Cloud project ID"
  type        = string
  default     = "your-project-id"
}

variable "service_account" {
  description = "Terraform's service account"
  type        = string
  default     = "your-service-account-email"
}
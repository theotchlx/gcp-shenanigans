# GKE Terraform Provisioning

This subfolder contains Terraform code to provision a Google Kubernetes Engine (GKE) cluster on Google Cloud Platform (GCP).

## Prerequisites

Before you can use this code, make sure you have the following prerequisites installed:

- Terraform: [Installation Guide](https://learn.hashicorp.com/tutorials/terraform/install-cli)
- Google Cloud SDK: [Installation Guide](https://cloud.google.com/sdk/docs/install)

You also need to create a service account with editor or owner permissions (IAM -> Service Accounts).
Export the service account key (Service Accounts -> Manage Keys -> Create Key (JSON)) to this subfolder and rename it `accountkey.json` (see provided placeholder)

## Getting Started

To get started with provisioning a GKE cluster, follow these steps:

1. Initialize Terraform: `terraform init`
2. Customize the Terraform variables in `variables.tf` to match your requirements.
3. Provision the GKE cluster: `terraform apply`

## Cleanup

To clean up and delete the provisioned GKE cluster, run the following command:

  ```bash
  terraform destroy
  ```

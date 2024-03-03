# GCS Bucket Terraform Provisioning

This Terraform module provisions a public Google Cloud Storage (GCS) bucket on Google Cloud Platform (GCP).
The bucket hosts a static website at https://storage.cloud.google.com/<RANDOM_HEX>-static-website-bucket/index.html

## Prerequisites

Before you can use this module, make sure you have the following prerequisites:

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
- A GCP project with the necessary permissions to create GCS buckets.

## Usage

1. Initialize the Terraform working directory: `terraform init`
2. Customize the Terraform variables in `bucket-variables.tf` to match your requirements.
3. Provision the GKE cluster: `terraform apply`

You will be prompted to confirm the changes. Enter `yes` to proceed.

You can connect to the bucket with this URL : https://storage.cloud.google.com/<RANDOM_HEX>-static-website-bucket/index.html  
Just make sure to replace <RANDOM_HEX> by the hex that identifies your bucket.


This subfolder contains Terraform and Ansible code to provision a VM instance on Google Cloud Storage (GCS).
Both codes are not, or minimally variabilised. Both codes provision a similar, cheap VM instance.

## Cleanup

To clean up and delete the provisioned instance (if Terraform is used), run the following command:

  ```bash
  terraform destroy
  ```

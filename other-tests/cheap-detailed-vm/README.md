# GCE Instance Terraform and Ansible Provisioning

This subfolder contains Terraform and Ansible code to provision a VM instance on Google Compute Engine (GCE).
Both codes are not, or minimally variabilised. Both codes provision a similar, cheap VM instance.

## Prerequisites

Before you can use this code, make sure you have the following prerequisites installed:

- Terraform: [Installation Guide](https://learn.hashicorp.com/tutorials/terraform/install-cli)
- Ansible: [Installation Guide](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)

You also need to create a service account with editor or owner permissions (IAM -> Service Accounts).
Export the service account key (Service Accounts -> Manage Keys -> Create Key (JSON)) to this subfolder and rename it `accountkey.json` (see provided placeholder)

## Getting Started

Provisioning with Terraform:

1. Initialize Terraform: `terraform init`
2. Customize the Terraform variables in `variables.tf` to match your requirements.
3. Provision the GKE cluster: `terraform apply`

Provisioning with Ansible:

1. Modify the `project_id` variable with the value of your GCP project ID.
2. Execute the playbook: `ansible-playbook provision-vm.yaml`

This will provision a cheap VM on Google Cloud.

## Cleanup

To clean up and delete the provisioned instance (if Terraform is used), run the following command:

  ```bash
  terraform destroy
  ```

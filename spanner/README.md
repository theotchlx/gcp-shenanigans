1. Environment variables set up documentation
2. Example documentation

# Environment variables set up documentation :

## It's better NOT to put credentials in the [terraform / production / ...].tfvars file, as it may be checked into version control.
## Instead, put them in environment variables. (during development, you can also authenticate using the gcloud SDK)

# Setting Up Environment Variables for Google Cloud Platform (GCP) in Terraform

This guide explains how to set up and use environment variables (for example to authenticate with providers, here with Google Cloud) in Terraform. By using environment variables, you can securely provide credentials and configuration details to Terraform without hardcoding them directly into your configuration files.

## Prerequisites

Before you begin, ensure you have the following:

- A Google Cloud Platform (GCP) account
- Terraform installed on your local machine
- A service account created in your GCP project with the necessary permissions (you should apply the principle of least privileges)

## Steps

1. **Create a Service Account**:
  - Go to the [Google Cloud Console](https://console.cloud.google.com) and navigate to the "IAM & Admin" > "Service accounts" section.
  - Click on "Create Service Account" and follow the prompts to create a new service account.
  - Assign the necessary roles and permissions to the service account based on your Terraform requirements.

2. **Generate Service Account Key**:
  - Once the service account is created, click on the service account email and then navigate to the "Keys" tab.
  - Click on "Add Key" and select "Create new key."
  - Choose the key type as "JSON" and click "Create" to download the JSON key file. This file contains the credentials required for Terraform to authenticate with GCP.

3. **Set up Environment Variables**:
  - Store the path to the downloaded service account key file and the GCP project ID as environment variables.
  - Open your terminal and navigate to the directory where your Terraform project is located.
  - Create a `.env` file in your project directory and define the environment variables:

    ```plaintext
    export TF_VAR_credentials_file="/path/to/service-account-key.json"
    export TF_VAR_project_id="your-gcp-project-id"
    ```
    Since they start with "TF_VAR_", they are automatically recognized by Terraform.
  - Then run `source .env` to define the environment variables for the current shell session.
  



---


# Example documentation :

# Project Name

Brief description of the project.

## Table of Contents

- [Introduction](#introduction)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Introduction

Brief introduction to the project, its purpose, and any relevant information.

## Installation

Explaination of how to install and set up the project, including any dependencies and their installation instructions.

## Usage

Instructions on how to use the project, including examples or code snippets if necessary.

## Contributing

Explaination of how others can contribute to the project, including guidelines for pull requests, coding standards, and other relevant information.

## License

This project is licensed under the [My License](LICENSE). See the LICENSE file for details.

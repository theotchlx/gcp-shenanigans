# GCP Provisioning using Terraform or Ansible

This project provides a collection of subfolders that allow you to deploy different Google Cloud Platform resources using Terraform or Ansible.
Terraform and Ansible have been working with Google to provide modules and resources for GCP. I made this project to discover and learn these technologies.

## Table of Contents

- [Introduction](#introduction)
- [Getting Started](#getting-started)
- [Folder Structure](#folder-structure)
- [Usage](#usage)

## Introduction

This project aims to simplify and automate the deployment of GCP resources by providing pre-configured subfolders for different resource types, using Terraform or Ansible.

## Getting Started

To get started with this project, follow these steps:

1. Clone the repository: `git clone https://github.com/theotchlx/gcp-shenanigans.git`
3. Choose the subfolder that corresponds to the GCP resource you want to deploy.
4. Follow the instructions in the subfolder's README to install the necessary dependencies and deploy the resources.

You may need to enable te Service Usage API so that Terraform can enable services (GKE, Compute Engine, ...):
https://console.developers.google.com/apis/api/serviceusage.googleapis.com/overview?project=<project_name>

## Folder Structure

Each subfolder contains the necessary files and configurations to deploy a specific GCP resource using either Terraform or Ansible.

## Usage

To use this project, follow the instructions provided in each subfolder's README. Each subfolder has its own set of instructions and configurations specific to the resource it deploys.
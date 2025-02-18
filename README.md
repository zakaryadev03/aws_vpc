# AWS VPC Deployment Automation

This hands-on project focuses on automating the deployment of an AWS Virtual Private Cloud (VPC) and maintaining its state. Two deployment methods are utilized: **Ansible** and **Terraform**. Both methods achieve nearly identical results, providing flexibility in infrastructure-as-code (IaC) tooling.

## Overview

The project demonstrates how to automate the creation and management of an AWS VPC using two popular infrastructure automation tools:
1. **Ansible**: A powerful IT automation tool for configuration management and application deployment.
2. **Terraform**: A widely-used IaC tool for provisioning and managing cloud infrastructure.

The final output of both methods is functionally equivalent, showcasing how different tools can achieve similar results in cloud infrastructure automation.

## Key Features
- Automated deployment of AWS VPC components (subnets, route tables, internet gateways, etc.).
- State management to ensure consistency and track changes.
- Support for both Ansible and Terraform, allowing users to choose their preferred tool.
- Modular and reusable code for easy customization.

## Deployment Methods

### 1. **Ansible**
- Uses Ansible playbooks to define and deploy AWS resources.
- Leverages the `amazon.aws` collection for AWS-specific modules.
- Ideal for users familiar with Ansible or those looking to integrate VPC deployment into existing Ansible workflows.

### 2. **Terraform**
- Uses Terraform configuration files (HCL) to define and provision AWS resources.
- Employs Terraform's state management to track and update infrastructure.
- Suitable for users who prefer Terraform's declarative approach and its robust ecosystem.

## Getting Started

### Prerequisites
- An AWS account with sufficient permissions to create VPC resources.
- [Terraform](https://www.terraform.io/downloads.html) installed (for Terraform deployment).
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) installed (for Ansible deployment).
- AWS CLI configured with valid credentials (aws profile recommended).

### Usage
1. Clone this repository:
2. Choose your prefered method:
   - Terraform: launch with `terraform plan` then apply with `terraform apply`
   - Ansible: launch the playbook

### Output
Both deployment methods will create the following AWS resources:

- VPC
- Subnets (public and private)
- Internet Gateway
- Route Tables
- Security Groups
- Bastion host instance

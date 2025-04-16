# ACS730 Final Project - Terraform Automation with GitHub Actions

## Project Overview
This project demonstrates the use of DevOps practices like Terraform, Ansible, and GitHub Actions for automating infrastructure deployment in AWS for a Two-Tier Web Application.


## Pre-requisites
- AWS Account
- Terraform Installed
- AWS CLI Configured
- S3 Buckets created for:
  - Terraform State Storage
  - Website Image Storage

## Deployment Steps
1. Create the Repository
   - cd terraform-final-project-acs730
2. Initialize Terraform
   - terraform init
3. Plan Terraform Deployment
   - terraform plan
4. Apply Terraform Deployment
   - terraform apply -auto-approve


## GitHub Actions Setup
- **`terraform-scan.yml`** → Runs Trivy & TFLint on push to staging and PR to prod.
- Runs Trivy and TFLint on every push to the staging branch
- Automatically triggers when a PR is created to the prod branch
- Helps ensure code is secure and follows Terraform best practices

- **`terraform-deploy.yml`** → Deploys Terraform automatically when code is pushed to prod branch.
- Runs when code is merged into the prod branch
- Automates
- Simulates a full CI/CD flow

## Branch Protection Rules
- Prod branch protected from direct push
- PR required for merge
- Force push & delete restricted

## Clean Up
- terraform destroy

## Project Structure

```plaintext
.
├── prod/
│   ├── main.tf
│   ├── variables.tf
│   └── backend.tf
├── dev/
│   ├── main.tf
│   ├── variables.tf
│   └── backend.tf
├── modules/
│   ├── network/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── load_balancer/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── webserver/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
├── .github/workflows/
│   ├── terraform-scan.yml
│   └── terraform-deploy.yml

```

## Summary

This project demonstrates how DevOps principles like **Infrastructure as Code (IaC)**, **CI/CD automation**, and **modular design** can be applied in real-world infrastructure deployment.

We successfully automated the provisioning of a Two-Tier Web Application architecture using:

- **Terraform** to define and deploy infrastructure in AWS
- **Ansible** for configuration management
- **GitHub Actions** for automating security checks and deployments
- **S3** for storing remote Terraform state

The use of environment-specific folders (`dev` and `prod`), along with reusable modules, promotes a clean and scalable architecture.

This project helped our team understand the importance of version control, secure workflows, and collaborative infrastructure automation.


## Authors

- Team Members
  - Member 1 → Infrastructure & Terraform (Bastin)
  - Member 2 → Ansible & Configuration Management (Arun)
  - Member 3 → GitHub Actions & Documentation (Sreehari)


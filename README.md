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
2. Initialize Terraform
3. Plan Terraform Deployment
4. Apply Terraform Deployment


## GitHub Actions Setup
- `terraform-scan.yml` → Runs Trivy & TFLint on push to staging and PR to prod.
- `terraform-deploy.yml` → Deploys Terraform automatically when code is pushed to prod branch.

## Branch Protection Rules
- Prod branch protected from direct push
- PR required for merge
- Force push & delete restricted

## Clean Up

## Authors
- Sree Hari
- Team Members
  - Member 1 → Infrastructure & Terraform
  - Member 2 → Ansible & Configuration Management
  - Member 3 → GitHub Actions & Documentation (Me)


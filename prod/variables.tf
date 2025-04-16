variable "region" {
  description = "AWS-region where all resources will be deployed"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deploying environment name (dev, staging, prod)"
  type        = string
  default     = "prod"
}

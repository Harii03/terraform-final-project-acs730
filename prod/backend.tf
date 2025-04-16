terraform {
  backend "s3" {
    bucket         = "acs730-final-project-bucket"
    key            = "prod/terraform.tfstate"
    region         = "us-east-1"
    endpoint       = "https://s3.us-east-1.amazonaws.com"
    skip_region_validation = true
  }
}

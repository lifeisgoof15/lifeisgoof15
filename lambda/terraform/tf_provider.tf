# ----------------------------------------------------------------------
# AWS Provider
# ----------------------------------------------------------------------
provider "aws" {
  region = "us-east-2"
}

# ----------------------------------------------------------------------
# Terraform S3 backend with DynamoDB Lock table
# ----------------------------------------------------------------------
terraform {
  backend "s3" {
    bucket         = "sunit-terraform-state"
    key            = "employees-api.tfstate"
    dynamodb_table = "my-terraform-lock"
    region         = "us-east-2"
    encrypt        = "true"
  }
}

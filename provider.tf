terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Provider Declaration  ///////////////////////////////////////////////// 
provider "aws" {
  profile = var.profile
  assume_role {
    role_arn = var.role_arn
  }
  region = var.region
}
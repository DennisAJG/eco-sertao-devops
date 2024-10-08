terraform {
  required_version = ">=1.7.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.38.0"
    }
  }

  backend "s3" {
    profile = "eco-sertao"
    bucket  = "eco-sertao-s3-terraform-tfstate"
    key     = "aws_vpc/terraform.tfstate"
    region  = "us-east-1"
  }
}
provider "aws" {
  region  = "us-east-1"
  profile = "eco-sertao"

  default_tags {
    tags = {
      owner      = "dennis gusmao"
      managed-by = "terraform-aws"
    }
  }
}


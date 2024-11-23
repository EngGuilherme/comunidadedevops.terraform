terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.77.0"

    }

  }
  backend "s3" {
    region = "us-east-1"
    bucket = "comunidadedevops-terraform-s3"
    key    = "dev/terraform.tfstate"
  }
}

provider "aws" {
  region = "us-east-1"
  # Configuration options
}
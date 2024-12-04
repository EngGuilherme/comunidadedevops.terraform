terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.77.0"

    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.34.0"
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

provider "kubernetes" {
  host                   = module.eks_cluster_role.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks_cluster_role.cluster_ca_cert)
  exec {
    api_version = "client.authentication.k8s.io/v1beta1"
    args        = ["eks", "get-token", "--cluster-name", module.eks_cluster_role.cluster_name]
    command     = "aws"
  }
}
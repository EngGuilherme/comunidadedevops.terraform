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
    helm = {
      source  = "hashicorp/helm"
      version = "2.16.1"
    }

  }
}

provider "aws" {
  region = var.region
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

provider "helm" {
  kubernetes {
    host                   = module.eks_cluster_role.cluster_endpoint
    cluster_ca_certificate = base64decode(module.eks_cluster_role.cluster_ca_cert)
    exec {
      api_version = "client.authentication.k8s.io/v1beta1"
      args        = ["eks", "get-token", "--cluster-name", module.eks_cluster_role.cluster_name]
      command     = "aws"
    }
  }
}
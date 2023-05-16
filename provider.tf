terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
  }

  cloud {
    organization = var.terraform_user

    workspaces {
      name = var.terraform_workspace
    }
  }

}

provider "aws" {
  region = "us-east-1"
}


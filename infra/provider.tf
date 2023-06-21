terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
  }

  cloud {
    organization = "jproig"

    workspaces {
      name = "Jenkins"
    }
  }

}

provider "aws" {
  region = "us-east-1"
}


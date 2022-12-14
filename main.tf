terraform {

    required_version = ">= 1.0.0"

    required_providers {

      aws = {
        source  = "hashicorp/aws"
        version = "3.73.0"
      }
    }

provider "aws" {
  region = "eu-central-1"

  default_tags {
    tags = {
      owner      = "viviannakano"
      managed-by = "terraform"
    }
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "vivian-remote-state"
    key    = "aws-vpc/terraform.tfstate"
    region = "sa-central-1"
    }
  }
}
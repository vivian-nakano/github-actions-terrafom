terraform {

    required_version = ">= 1.0.0"

    required_providers {

      aws = {
        region  = "sa-east-1"
        source  = "hashicorp/aws"
        version = "3.73.0"
      }
    }
}

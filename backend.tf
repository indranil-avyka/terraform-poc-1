terraform {
  required_version = ">= 1.3.0, <= 1.9.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5"
    }
  }

  backend "s3" {
    bucket  = "indranil-iacm-bucket"
    key     = "iacm-basics/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}

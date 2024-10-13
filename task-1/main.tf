terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }


  backend "s3" {
    bucket  = "rs-school-dev-ops-terraform-bucket"
    region  = "eu-west-2"
    key     = "terraform/terraform.tfstate"
    encrypt = true
  }
}

data "aws_caller_identity" "current" {}
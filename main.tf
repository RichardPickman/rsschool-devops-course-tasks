terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }


  backend "s3" {
    bucket = var.bucket_name
    region  = var.region
    key = "terraform/terraform.tfstate"
    encrypt = true
  }
}
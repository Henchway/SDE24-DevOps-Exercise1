terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.23.1"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "${var.aws_credentials.access_key}" 
  secret_key = "${var.aws_credentials.secret_key}" 
}

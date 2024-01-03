terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }
}

provider "aws" {
  # Configuration options
  #we can give accesskey and security key here, but security problem.
  region = "us-east-1"
}
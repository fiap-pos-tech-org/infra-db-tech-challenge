terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "tech-challenge-38"
    key    = "infra-db-tech-challenge/db.tfstate"
    region = "us-east-1"
  }

  required_version = ">= 1.6.1"
}

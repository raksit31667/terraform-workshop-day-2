terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  backend "s3" {
    profile        = "raksit31667-terraform"
    bucket         = "earth-terraform-state"
    key            = "global"
    region         = "ap-southeast-1"
    dynamodb_table = "earth-terraform-state-lock"
    encrypt        = false
  }
}

provider "aws" {
  profile = "raksit31667-terraform"
  region  = "ap-southeast-1"
}
terraform {
  # cloud {
  #   organization = "themapisto-org"
  #   hostname     = "app.terraform.io" # default

  #   workspaces {
  #     name = "terraform-aws-tfc-workflow"
  #   }
  # }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.region
  default_tags {
    tags = {
      Project = "terraform cloud workflow"
      Owner   = "jerry & tom"
    }
  }
}
terraform {
  required_providers {
    tfe = {
      version = "~> 0.68.2"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

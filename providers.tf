terraform {
  required_providers {
    tfe = {
      version = "~> 0.68.2"
    }
    turbonomic = {
      source  = "IBM/turbonomic"
      version = "1.3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "turbonomic" {
  hostname   = "svc-useast.event.techzone.ibm.com:32457"
  username   = "administrator"
  password   = "Turbo4All!"
  skipverify = true
}

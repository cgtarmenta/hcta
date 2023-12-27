terraform {
    required_version = ">= 1.3.7"
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = ">= 5.31.0"
        }
    }
  backend "http" {
    address        = "https://api.tfstate.dev/github/v1"
    lock_address   = "https://api.tfstate.dev/github/v1/lock"
    unlock_address = "https://api.tfstate.dev/github/v1/lock"
    lock_method    = "PUT"
    unlock_method  = "DELETE"
    username       = "cgtarmenta/hcta"
  }
}
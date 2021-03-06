terraform {
  required_providers {
    vultr = {
      source  = "vultr/vultr"
      version = "2.5.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "3.67.0"
    }
  }
}

provider "vultr" {
  rate_limit  = 700
  retry_limit = 3
}

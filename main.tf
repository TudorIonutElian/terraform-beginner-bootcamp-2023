terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
  }
}

provider "random" {
  # Configuration options
}

resource "random_string" "bucket_name" {
  length   = 32
  special  = false
  lower = true
  upper = false
}

output "random_bucket_name" {
  value = random_string.bucket_name.result
}

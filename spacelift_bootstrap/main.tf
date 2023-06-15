terraform {
  required_providers {
    spacelift = {
      source = "spacelift-io/spacelift"
      version = "1.1.7"
    }
  }
}

provider "spacelift" {
  api_token = var.spacelift_api_token
}


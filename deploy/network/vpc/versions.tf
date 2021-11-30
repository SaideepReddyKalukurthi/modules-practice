terraform {
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "~> 4.0"
    }
  }
  backend "gcs" {
      bucket = "terraform-gcs-backend-state"
      prefix = "modules/deploy/network/vpc/state"    
  }
}


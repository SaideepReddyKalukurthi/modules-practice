terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "<5.0,>= 2.12"
    }
  }
  backend "gcs" {
     bucket = "terraform-gcs-backend-state"
     prefix = "modules/deploy/network/firewall-rules/state"    
  }
}



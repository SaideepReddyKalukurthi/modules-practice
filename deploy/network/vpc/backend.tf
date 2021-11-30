

terraform {
  backend "gcs" {
      bucket = "terraform-gcs-backend-state"
      prefix = "modules/deploy/network/vpc/state"    
  }
}
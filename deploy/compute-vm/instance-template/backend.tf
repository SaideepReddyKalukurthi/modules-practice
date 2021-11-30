
data "terraform_remote_state" "network-name" {
    backend = "gcs"
    config = {
       bucket = "terraform-gcs-backend-state"
       prefix = "modules/deploy/network/vpc/state"   
     }
}

terraform {
  backend "gcs" {
      bucket = "terraform-gcs-backend-state"
      prefix = "modules/deploy/compute-vm/instance-template/state"    
  }
}



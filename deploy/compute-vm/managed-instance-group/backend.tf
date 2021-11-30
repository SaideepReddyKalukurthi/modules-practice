

data "terraform_remote_state" "template-details" {
    backend = "gcs"
    config = {
      bucket = "terraform-gcs-backend-state"
      prefix = "modules/deploy/compute-vm/instance-template/state"
     }
  
}

terraform {
   backend "gcs" {
      bucket = "terraform-gcs-backend-state"
      prefix = "modules/deploy/compute-vm/managed-instance-group/state"    
  }
}
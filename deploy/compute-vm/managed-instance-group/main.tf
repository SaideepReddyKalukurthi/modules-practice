provider "google" {
  
}



module "mig" {
    source = "../../../modules/compute-vm/managed-instance-group"
    hostname = var.hostname
    mig-name = var.mig_name
    project-name = var.project_name
    target-size = var.target_size
    region-name = var.region_name
    zone-name = var.zone_name
    instance-template = data.terraform_remote_state.template-details.outputs.template--link
}

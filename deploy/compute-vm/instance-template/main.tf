provider "google" {
    project = var.project_name
    region = var.region_name 
}

module "instance-template" {
    source = "../../../modules/compute-vm/instance-template"
    project-name = var.project_name
#    name = var.template_name
    machine_type = var.machine_type
    network-name = data.terraform_remote_state.network-name.outputs.name
    region-name = var.region_name 
}
provider "google" {
    project = var.project_name
}

module "virtual-private-cloud" {
    source = "../../../modules/network/vpc"
    project-name = var.project_name
    auto-create-subnets = var.auto_create_subnetworks
    network-name = var.network_name
    routing-mode = var.routing_mode
}


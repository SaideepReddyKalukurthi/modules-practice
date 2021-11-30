resource "google_compute_network" "vpc" {
    project = var.project-name
    auto_create_subnetworks = var.auto-create-subnets
    name = var.network-name
    routing_mode = var.routing-mode
    mtu = 1460
}


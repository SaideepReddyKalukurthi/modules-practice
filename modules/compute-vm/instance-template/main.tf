provider "google" {
    project = var.project-name
    region = var.region-name
}

data "google_compute_image" "my_image" {
  family  = "debian-9"
  project = "debian-cloud"
}

resource "google_compute_instance_template" "template" {
 #   name = var.name
 #   name_prefix = var.name-prefix
    machine_type = var.machine_type
    can_ip_forward = var.can-ip-forwarding
    labels = var.labels
    metadata = var.metadata
    disk {
      source_image = data.google_compute_image.my_image.self_link
    }
    network_interface {
        network = var.network-name


    }
}


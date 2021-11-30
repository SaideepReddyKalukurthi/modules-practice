
output "network_name" {
  value       = google_compute_network.vpc.name
  description = "The name of the VPC being created"
}

output "network_id" {
  value       = google_compute_network.vpc.id
  description = "The ID of the VPC being created"
}

output "network_self_link" {
  value       = google_compute_network.vpc.self_link
  description = "The URI of the VPC being created"
}
output "name" {
    value = module.virtual-private-cloud.network_name  
}

output "network-link" {
    value = module.virtual-private-cloud.network_self_link
}

output "network" {
    value = module.virtual-private-cloud.network
}

output "project-id" {
    value = module.virtual-private-cloud.project_id
}

output "network-id" {
    value = module.virtual-private-cloud.network_id
}
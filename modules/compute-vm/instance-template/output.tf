output "template-link" {
    value =  google_compute_instance_template.template.self_link
}

output "template-name" {
    value = google_compute_instance_template.template.name
}
output "template-link" {
    value =  google_compute_instance_template.template.self_link
}

output "template-name" {
    value = google_compute_instance_template.template.name
}

output "tags" {
  description = "Tags that will be associated with instance(s)"
  value       = google_compute_instance_template.tpl.tags
}
resource "google_compute_health_check" "autohealing" {
  name                = "autohealing-health-check"
  check_interval_sec  = 5
  timeout_sec         = 5
  healthy_threshold   = 2
  unhealthy_threshold = 10 # 50 seconds

  http_health_check {
    request_path = "/healthz"
    port         = "8080"
  }
  project = var.project-name
}

resource "google_compute_instance_group_manager" "manged-instance-group" {
    name = var.mig-name
    base_instance_name = var.hostname
    project = var.project-name
    zone = var.zone-name
    version {
      instance_template = var.instance-template
    }
    target_size = var.target-size
    auto_healing_policies {
      health_check = google_compute_health_check.autohealing.id
      initial_delay_sec = 300
    }

}
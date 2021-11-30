
variable "project-name" {
  type        = string
  description = "The GCP project ID"
  default     = null
}

variable "hostname" {
  description = "Hostname prefix for instances"
  default     = "default"
}

variable "mig-name" {
  type        = string
  description = "Managed instance group name. When variable is empty, name will be derived from var.hostname."
  default     = ""
}

variable "region-name" {
  description = "The GCP region where the managed instance group resides."
  default = ""
}

variable "instance-template" {
  description = "Instance template self_link used to create compute instances"
  default = ""
}

variable "target-size" {
  description = "The target number of running instances for this managed instance group. This value should always be explicitly set unless this resource is attached to an autoscaler, in which case it should never be set."
  default     = 1
}

variable "zone-name" {
  type = string
  default = ""
}

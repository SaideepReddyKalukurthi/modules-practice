variable "project_name" {
    type = string
    description = "(optional) describe your variable"
    default = ""
}

variable "auto_create_subnetworks" {
    type = bool
    default = true
}

variable "routing_mode" {
    type = string
    default = ""
}

variable "network_name" {
    type = string
    default = ""
}


variable "project-name" {
    type = string
    description = "(optional) describe your variable"
    default = ""
}

variable "region-name" {
    type = string
    description = "(optional) describe your variable"
    default = ""
}

variable "name" {
    type = string
    description = "(optional) describe your variable"
    default = ""
}

variable "name-prefix" {
    type = string
    description = "(optional) describe your variable"
    default = "instance-"
}

variable "machine_type" {
  description = "Machine type to create, e.g. n1-standard-1"
  default     = "n1-standard-1"
}

variable "can-ip-forwarding" {
    type = bool
    description = "(optional) describe your variable"
    default = false
}

variable "labels" {
    type = map(string)
    description = "(optional) describe your variable"
    default = { }
}

variable "metadata" {
  type        = map(string)
  description = "Metadata, provided as a map"
  default     = {}
}

variable "network-name" {
    type = string
    description = "(optional) describe your variable"
    default = ""
}



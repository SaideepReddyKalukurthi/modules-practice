variable "project-name" {
    type = string
    description = "(optional) describe your variable"
    default = ""
}

variable "network-name" {
    type = string
    description = "(optional) describe your variable"
    default = ""
}

variable "auto-create-subnets" {
    type = bool
    default = true
}

variable "routing-mode" {
  type        = string
  default     = "GLOBAL"
  description = "The network routing mode (default 'GLOBAL')"
}


variable "enable_bastion" {
  type    = bool
  default = false
}

variable "prefix" {
  type    = string
  default = "tfvmex"
}

variable "resource_group_name" {
  type = string
}
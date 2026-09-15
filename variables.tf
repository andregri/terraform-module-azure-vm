variable "cloud_init" {
  type    = string
  default = "echo hello world"
}

variable "enable_bastion" {
  type    = bool
  default = false
}

variable "prefix" {
  type    = string
  default = "tfvmex"
}

variable "location" {
  type    = string
  default = "East US"
}

variable "resource_group_name" {
  type = string
}

variable "vm_count" {
  type    = number
  default = 1
}

variable "vm_size" {
  type    = string
  default = "Standard_DS1_v2"
}
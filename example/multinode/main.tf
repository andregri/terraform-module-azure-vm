variable "resource_group_name" {
  description = "The name of the resource group in which to create the resources."
  type        = string
}

module "multinode" {
  source = "../../"

  enable_bastion      = true
  prefix              = "multinode"
  resource_group_name = var.resource_group_name
  vm_count            = 4
  vm_size             = "Standard_D2"
}
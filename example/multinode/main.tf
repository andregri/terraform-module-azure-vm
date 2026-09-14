module "multinode" {
  source = "../../"

  enable_bastion      = true
  prefix              = "multinode"
  resource_group_name = "1-c95f1421-playground-sandbox"
  vm_count            = 4
}
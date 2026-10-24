output "bastion_host_name" {
  value = azurerm_bastion_host.bastion[0].name
}

output "network_interface_ids" {
  value = azurerm_network_interface.main[*].id
}

output "subnet_id" {
  value = azurerm_subnet.internal.id
}

output "vm_hostnames" {
  value = azurerm_virtual_machine.main[*].name
}

output "vm_ids" {
  value = azurerm_virtual_machine.main[*].id
}

output "vm_private_ips" {
  value = azurerm_network_interface.main[*].private_ip_address
}

output "vnet_rancher_id" {
  value = azurerm_virtual_network.main.id
}

output "vnet_rancher_name" {
  value = azurerm_virtual_network.main.name
}
output "vm_hostnames" {
  value = azurerm_virtual_machine.main[*].name
}

output "vm_ids" {
  value = azurerm_virtual_machine.main[*].id
}

output "vm_private_ips" {
  value = azurerm_network_interface.main[*].private_ip_address
}
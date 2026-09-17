# Terraform Module Azure VM

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 5.5.0 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 5.5.0 |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [azurerm_bastion_host.bastion](https://registry.terraform.io/providers/hashicorp/azurerm/5.5.0/docs/resources/bastion_host) | resource |
| [azurerm_nat_gateway.this](https://registry.terraform.io/providers/hashicorp/azurerm/5.5.0/docs/resources/nat_gateway) | resource |
| [azurerm_nat_gateway_public_ip_association.this](https://registry.terraform.io/providers/hashicorp/azurerm/5.5.0/docs/resources/nat_gateway_public_ip_association) | resource |
| [azurerm_network_interface.main](https://registry.terraform.io/providers/hashicorp/azurerm/5.5.0/docs/resources/network_interface) | resource |
| [azurerm_public_ip.bastion_pip](https://registry.terraform.io/providers/hashicorp/azurerm/5.5.0/docs/resources/public_ip) | resource |
| [azurerm_public_ip.nat](https://registry.terraform.io/providers/hashicorp/azurerm/5.5.0/docs/resources/public_ip) | resource |
| [azurerm_subnet.bastion_subnet](https://registry.terraform.io/providers/hashicorp/azurerm/5.5.0/docs/resources/subnet) | resource |
| [azurerm_subnet.internal](https://registry.terraform.io/providers/hashicorp/azurerm/5.5.0/docs/resources/subnet) | resource |
| [azurerm_subnet_nat_gateway_association.private](https://registry.terraform.io/providers/hashicorp/azurerm/5.5.0/docs/resources/subnet_nat_gateway_association) | resource |
| [azurerm_virtual_machine.main](https://registry.terraform.io/providers/hashicorp/azurerm/5.5.0/docs/resources/virtual_machine) | resource |
| [azurerm_virtual_network.main](https://registry.terraform.io/providers/hashicorp/azurerm/5.5.0/docs/resources/virtual_network) | resource |
| [azurerm_resource_group.example](https://registry.terraform.io/providers/hashicorp/azurerm/5.5.0/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_cloud_init"></a> [cloud\_init](#input\_cloud\_init) | n/a | `string` | `"echo hello world"` | no |
| <a name="input_enable_bastion"></a> [enable\_bastion](#input\_enable\_bastion) | n/a | `bool` | `false` | no |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | `"East US"` | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | n/a | `string` | `"tfvmex"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | n/a | `string` | n/a | yes |
| <a name="input_vm_count"></a> [vm\_count](#input\_vm\_count) | n/a | `number` | `1` | no |
| <a name="input_vm_size"></a> [vm\_size](#input\_vm\_size) | n/a | `string` | `"Standard_DS1_v2"` | no |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_bastion_host_name"></a> [bastion\_host\_name](#output\_bastion\_host\_name) | n/a |
| <a name="output_subnet_id"></a> [subnet\_id](#output\_subnet\_id) | n/a |
| <a name="output_vm_hostnames"></a> [vm\_hostnames](#output\_vm\_hostnames) | n/a |
| <a name="output_vm_ids"></a> [vm\_ids](#output\_vm\_ids) | n/a |
| <a name="output_vm_private_ips"></a> [vm\_private\_ips](#output\_vm\_private\_ips) | n/a |
<!-- END_TF_DOCS -->
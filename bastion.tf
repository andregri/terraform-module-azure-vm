# Create Subnet for Azure Bastion
resource "azurerm_subnet" "bastion_subnet" {
  count                = var.enable_bastion ? 1 : 0
  name                 = "AzureBastionSubnet"
  resource_group_name  = data.azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.0.3.0/26"]
}

# Create Public IP for Azure Bastion
resource "azurerm_public_ip" "bastion_pip" {
  count               = var.enable_bastion ? 1 : 0
  name                = "${var.prefix}-bastion-pip"
  location            = data.azurerm_resource_group.example.location
  resource_group_name = data.azurerm_resource_group.example.name
  allocation_method   = "Static"
  sku                 = "Standard"
}

# Create Azure Bastion Host
resource "azurerm_bastion_host" "bastion" {
  count               = var.enable_bastion ? 1 : 0
  name                = "${var.prefix}-network-bastion"
  location            = data.azurerm_resource_group.example.location
  resource_group_name = data.azurerm_resource_group.example.name
  sku                 = "Standard"

  ip_configuration {
    name                 = "IpConf"
    subnet_id            = azurerm_subnet.bastion_subnet.id
    public_ip_address_id = azurerm_public_ip.bastion_pip.id
  }
}
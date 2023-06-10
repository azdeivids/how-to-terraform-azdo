resource "azurerm_virtual_network" "packer_vnet" {
  name                = "vnet-${var.name}-001"
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = ["10.0.0.0/16"]

  tags = {
    Env           = "Dev"
    Owner         = "deivids@deividsegle.com"
    "Cost Center" = "IT"
  }
}

resource "azurerm_subnet" "default_snet" {
  name                 = "snet-${var.name}-001"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.packer_vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_network_security_group" "main_nsg" {
  name                = "nsg-${var.name}-001"
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = {
    Env           = "Dev"
    Owner         = "deivids@deividsegle.com"
    "Cost Center" = "IT"
  }
}

resource "azurerm_subnet_network_security_group_association" "rule01-assoc" {
  subnet_id                 = azurerm_subnet.default_snet.id
  network_security_group_id = azurerm_network_security_group.main_nsg.id
}
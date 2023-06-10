resource "random_string" "main" {
  length  = 8
  upper   = false
  special = false
}

resource "azurerm_resource_group" "main_packer" {
  name     = "rg-packer-${random_string.main.result}-dev-001"
  location = var.location

  tags = {
    Env           = "Dev"
    Owner         = "deivids@deividsegle.com"
    "Cost Center" = "IT"
    Created       = "4/4/23"
  }
}

module "network" {
  source = "../modules/network/bastion"

  name                = random_string.main.result
  resource_group_name = azurerm_resource_group.main_packer.name
  location            = azurerm_resource_group.main_packer.location
}
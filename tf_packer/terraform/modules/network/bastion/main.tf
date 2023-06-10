resource "azurerm_resource_group" "packer" {
  name     = "rg-${var.name}-dev-001"
  location = var.location

  tags = {
    Env           = "Dev"
    Owner         = "deivids@deividsegle.com"
    "Cost Center" = "IT"
    "Created"     = "4/4/23"
  }
}

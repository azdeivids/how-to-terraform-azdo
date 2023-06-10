resource "azurerm_resource_group" "tf_packer" {
  name     = "rg-tf-packer"
  location = var.location

  tags = {
    Env           = "Dev"
    Owner         = "deivids@deividsegle.com"
    "Cost Center" = "IT"
    Created       = "4/4/23"
  }
}
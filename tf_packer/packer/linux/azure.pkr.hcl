source "azure-arm" "vm" {
  client_id       = var.client_id
  client_secret   = var.client_secret
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id

  location                          = "UK South"
  managed_image_name                = "aztf-ubuntu"
  managed_image_resource_group_name = "rg-tf-packer"

  communicator                      = "ssh"
  os_type                           = "Linux"
  image_offer                       = "UbuntuServer"
  image_publisher                   = "Canonical"
  image_sku                         = "18.04-LTS"

  vm_size                           = "Standard_DS2_v2"

  allowed_inbound_ip_addresses      = ["80.2.252.86"]

}
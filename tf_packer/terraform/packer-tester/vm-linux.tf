module "linux_vm" {
  source = "../modules/compute/vm/linux"

  name                = random_string.main.result
  resource_group_name = azurerm_resource_group.main_packer.name
  location            = azurerm_resource_group.main_packer.location
  subnet_id           = module.network.subnet_id
  vm_image_id         = data.azurerm_image.aztf_ubuntu_image.id
  ssh_public_key      = data.azurerm_key_vault_secret.ssh_pub_key.value

}
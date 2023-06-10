resource "random_password" "admin_password" {
  length           = 16
  special          = true
  override_special = "!#$&"
}

resource "local_file" "windows_admin_password" {
  content  = random_password.admin_password.result
  filename = "${path.module}/password.txt"
}

module "windows_vm" {
  source = "../modules/compute/vm/windows"

  name                = random_string.main.result
  resource_group_name = azurerm_resource_group.main_packer.name
  location            = azurerm_resource_group.main_packer.location
  subnet_id           = module.network.subnet_id
  vm_image_id         = data.azurerm_image.aztf_win2k16_image.id
  admin_password      = random_password.admin_password.result

}
resource "azurerm_network_interface" "vm_nic" {
  name                = "nic-win2k16-${var.name}"
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "vm02" {
  name                = "win${var.name}"
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = "Standard_DS2_v2"
  admin_username      = "deivids"
  admin_password      = var.admin_password

  network_interface_ids = [
    azurerm_network_interface.vm_nic.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_id = var.vm_image_id


}
data "azurerm_key_vault" "main_kv" {
  name                = "kv-10nj1vfv"
  resource_group_name = "rg-ssh-kv-10nj1vfv"
}

data "azurerm_key_vault_secret" "ssh_pub_key" {
  name         = "ssh-public"
  key_vault_id = data.azurerm_key_vault.main_kv.id
}

data "azurerm_image" "aztf_ubuntu_image" {
  name                = "aztf-ubuntu"
  resource_group_name = "rg-tf-packer"
}

data "azurerm_image" "aztf_win2k16_image" {
  name                = "aztf-WIN2k16"
  resource_group_name = "rg-tf-packer"
}
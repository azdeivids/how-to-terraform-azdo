source "azure-arm" "vm" {
  client_id       = var.client_id
  client_secret   = var.client_secret
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id

  location                          = var.location
  managed_image_name                = "${var.image_name}-${var.image_version}"
  managed_image_resource_group_name = var.gallery_resource_group_name

  shared_image_gallery_destination {
    subscription         = var.subscription_id
    resource_group       = var.gallery_resource_group_name
    gallery_name         = var.gallery_name
    image_name           = var.image_name
    image_version        = var.image_version
    replication_regions  = [ 
      var.primary_region 
      ]
  }


  communicator                      = "ssh"
  os_type                           = "Linux"
  image_offer                       = "UbuntuServer"
  image_publisher                   = "Canonical"
  image_sku                         = "18.04-LTS"

  vm_size                           = "Standard_DS2_v2"

  allowed_inbound_ip_addresses      = ["80.2.252.86"]

}
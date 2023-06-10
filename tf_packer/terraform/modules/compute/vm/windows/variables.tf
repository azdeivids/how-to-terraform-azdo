variable "location" {
  description = "Location where all the resources will be stored."
  type        = string
}

variable "name" {
  description = "Name to be used for provisined resources."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group where all the resources will be stored."
  type        = string
}

variable "subnet_id" {
  description = "Subnet id for where the vm will be allocated."
  type        = string
}

variable "vm_image_id" {
  description = "Referance image for the vm build."
  type        = string
}

variable "admin_password" {
  description = "Admin password used to remote access the windows server."
  type        = string
}
variable "subscription_id" {
    description = "Current subscription to be used."
    type        = string
}

variable "tenant_id" {
    description = "AAD tenant ID in which the service principal (client_id) resides."
    type        = string
}

variable "client_id" {
    description = "AAD svc principal application ID."
    type        = string
}

variable "client_secret" {
    description = "AAD svc principaĺ application secret requierd for client_id."
    type        = string
}

variable "location" {
    description = "Region in which the VM will be built."
    type        = string
}

variable "gallery_resource_group_name" {
    description = "Resource group in which the final artifact will be stored."
    type        = string
}

variable "gallery_name" {
    description = "Shared image gallery destination name."
    type        = string
}

variable "image_name" {
    description = "Shared image gallery destination iamge name."
    type        = string
}

variable "image_version" {
    description = "Shared image gallery destination iamge version."
    type = string
}

variable "primary_region" {
    description = "Region in which to replicate the shared image to."
    type        = string
}

# variable "my_ip_address"{
#     description = "My ip address."    
#     type        = string
# }
variable "location" {
  default = "East Us"
  description = "This variable specifies the Azure region where resources will be created"
}

variable "rg" {
  default = "nome-rg"
  description = "The name of the Azure resource group where resources will be deployed"
}

variable "network_name" {
  default = "network_name"
  description = " "
}

variable "address_space" {
  default = ["10.0.0.0/16"]
  description = " "
}
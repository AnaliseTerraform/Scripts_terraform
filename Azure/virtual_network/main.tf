resource "azurerm_virtual_network" "virtual_network" {
  name                = var.network_name
  address_space       = var.address_space 
  location            = var.location
  resource_group_name = var.rg
}

# Virtual Network (VNet)
# What it is:
# A virtual network (VNet) is a private network in Azure. 
# It allows you to connect your Azure resources securely.

# Why use it:
# VNets provide a secure communication channel between your resources. 
# You can control the IP addresses, subnets, and security settings.

# Example:
# Imagine a city (the VNet) where different neighborhoods (subnets) 
# are connected but only accessible to certain residents (your resources).
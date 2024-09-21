resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  resource_group_name  = var.rg
  virtual_network_name = var.network_name
  address_prefixes     = ["10.0.1.0/24"]
}

# Subnet
# What it is:
# A subnet is a smaller part of a virtual network. 
# It allows you to organize and segment your network.

# Why use it:
# Subnets help improve performance and security. 
# You can group resources by function or security requirements.

# Example:
# In a web application, you might have one subnet for web servers 
# and another for databases, helping to control access and traffic.
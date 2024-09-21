provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.rg
  location = var.location
}


# Resource Group
# What it is:
# A resource group is a container that holds related Azure resources.
# Think of it as a folder where you organize all your resources that work 
# together.

# Why use it:
# Resource groups help you manage and organize your resources easily. 
# You can deploy, update, or delete all resources in a group at once.

# Example:
# If you have a web application, you can create a resource group that includes
# the web app, its database, and any networking resources.
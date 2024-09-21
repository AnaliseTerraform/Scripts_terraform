resource "azurerm_network_interface" "network_interface" {
  name                = var.network_interface
  location            = var.location
  resource_group_name = var.rg

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.example.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "virtual_machine" {
  name                = var.vm_name
  resource_group_name = var.rg
  location            = var.location
  size                = var.vm_size
  admin_username      = var.adm_username
  admin_password      = var.adm_password

  network_interface_ids = [
    azurerm_network_interface.example.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }

}

# Virtual Machine (VM)
# What it is:
# A virtual machine is a software-based computer that runs in Azure. 
# It functions like a physical computer but is hosted in the cloud.

# Why use it:
# VMs allow you to run applications, websites, and services in the 
# cloud without needing physical hardware. You can easily scale up or 
# down as needed.

# Example:
# If you need a server to host your website, you can create a VM with 
# the operating system and software you need in just a few minutes.
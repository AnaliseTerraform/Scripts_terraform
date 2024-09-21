variable "rg" {
  default = "nome-rg"
  description = " "
}

variable "network_interface" {
  default = "network_interface_name"
  description = " "
}

variable "location" {
  default = "East Us"
  description = " "
}

variable "vm_name" {
  default = "vm_name"
  description = " "
}

variable "vm_size" {
  default = "Standard_DS1_v2"
  description = " "
}

variable "adm_username" {
  default = "sqladmin"
  description = "The administrator login name for the SQL server "
}

variable "adm_password" {
  default = "P@ssword1234!"
  description = "The password for the administrator login of the SQL server "
}
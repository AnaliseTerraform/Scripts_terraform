resource "azurerm_sql_server" "sql_server" {
  name                         = var.name_sql_server
  resource_group_name          = var.rg
  location                     = var.location
  version                      = var.version_sql
  administrator_login          = var.adm_login
  administrator_login_password = var.adm_password
}

resource "azurerm_sql_database" "sql_database" {
  name                = var.sql_database
  resource_group_name = var.rg
  location            = var.location
  server_name         = azurerm_sql_server.sql_server.name
  requested_service_objective_name = "S0"
}

# SQL Database
# What it is:
# An SQL database in Azure is a cloud-based database service that allows 
# you to store and manage data using SQL (Structured Query Language).

# Why use it:
# Azure SQL Database provides high availability, security, and scalability 
# for your applications. You don’t have to worry about managing the underlying
# hardware.

# Example:
# If your web application needs to store user data, you can create an SQL 
# database to securely manage and access that data from your application.
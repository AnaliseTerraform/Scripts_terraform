variable "name_sql_server" {
  default = "name_sql_server"
  description = "The name of the Azure SQL server that will host the database." 
}

variable "version_sql" {
  default = "12.0"
  description = "The version of the SQL Server to be used"
}

variable "adm_login" {
  default = "sqladmin"
  description = "The administrator login name for the SQL server "
}

variable "adm_password" {
  default = "P@ssword1234!"
  description = "The password for the administrator login of the SQL server "
}

variable "sql_database" {
  default = "namedatabase"
  description = " The name of the SQL database that will be created on the server"
}


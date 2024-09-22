# VPC
variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

# Subnets
variable "subnet_cidr_blocks" {
  description = "List of CIDR blocks for subnets"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "availability_zones" {
  description = "List of availability zones"
  default     = ["us-east-1a", "us-east-1b"]
}

# RDS
variable "db_allocated_storage" {
  description = "Allocated storage for RDS instance (in GB)"
  default     = 20
}

variable "db_engine" {
  description = "The database engine (e.g., mysql, postgres, etc.)"
  default     = "mysql"
}

variable "db_instance_class" {
  description = "The instance class for the RDS (e.g., db.t2.micro, db.t3.medium)"
  default     = "db.t2.micro"
}

variable "db_name" {
  description = "The name of the RDS database"
  default     = "mydatabase"
}

variable "db_username" {
  description = "Username for the RDS instance"
  default     = "admin"
}

variable "db_password" {
  description = "Password for the RDS instance"
  default     = "mysecretpassword"
}

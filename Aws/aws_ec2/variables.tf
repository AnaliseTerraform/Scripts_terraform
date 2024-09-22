# VPC
variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

# Subnet
variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "AWS availability zone"
  default     = "us-east-1a"
}

# EC2 Instance
variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  default     = "Set the AMI you want to use"  
}

variable "instance_type" {
  description = "Type of EC2 instance"
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of the key pair to use"
  default     = "my-key-pair"
}

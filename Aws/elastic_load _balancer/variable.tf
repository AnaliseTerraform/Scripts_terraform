variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_blocks" {
  description = "List of CIDR blocks for subnets"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-0c55b159cbfafe1f0"  # Update this with a valid AMI ID
}

variable "instance_type" {
  description = "Type of EC2 instance"
  default     = "t2.micro"
}

variable "min_size" {
  description = "Minimum size of the Auto Scaling group"
  default     = 1
}

variable "max_size" {
  description = "Maximum size of the Auto Scaling group"
  default     = 5
}

variable "desired_capacity" {
  description = "Desired capacity of the Auto Scaling group"
  default     = 2
}

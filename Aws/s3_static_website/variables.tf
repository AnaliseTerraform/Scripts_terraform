variable "bucket_name" {
  description = "Name of the S3 bucket"
  default     = "my-static-website-bucket-unique"  # O nome do bucket deve ser único globalmente
}

variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

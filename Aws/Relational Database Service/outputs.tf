output "rds_endpoint" {
  description = "The endpoint of the RDS instance"
  value       = aws_db_instance.example.endpoint
}

output "rds_db_name" {
  description = "The name of the database"
  value       = aws_db_instance.example.name
}

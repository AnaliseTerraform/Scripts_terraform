output "elb_dns" {
  description = "The DNS name of the Elastic Load Balancer"
  value       = aws_elb.main.dns_name
}

output "auto_scaling_group_id" {
  description = "The ID of the Auto Scaling group"
  value       = aws_autoscaling_group.app.id
}

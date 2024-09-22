output "website_url" {
  description = "The URL of the static website"
  value       = aws_s3_bucket.website_bucket.website_endpoint
}

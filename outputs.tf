output "bucket_id" {
  description = "The name/ID of the S3 bucket"
  value       = aws_s3_bucket.main.id
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.main.arn
}

output "bucket_region" {
  description = "The region where the bucket was created"
  value       = aws_s3_bucket.main.region
}

output "bucket_domain_name" {
  description = "The bucket domain name (URL)"
  value       = aws_s3_bucket.main.bucket_domain_name
}

output "instance_ids" {
  description = "The IDs of the EC2 instances"
  value       = aws_instance.web[*].id
}

output "instance_public_ips" {
  description = "The public IP addresses of the EC2 instances"
  value       = aws_instance.web[*].public_ip
}


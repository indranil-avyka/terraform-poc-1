output "bucket_id" {
  description = "The name/ID of the S3 bucket"
  value       = module.s3_and_ec2.bucket_id
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = module.s3_and_ec2.bucket_arn
}

output "bucket_region" {
  description = "The region where the bucket was created"
  value       = module.s3_and_ec2.bucket_region
}

output "bucket_domain_name" {
  description = "The bucket domain name (URL)"
  value       = module.s3_and_ec2.bucket_domain_name
}

output "instance_ids" {
  description = "The IDs of the EC2 instances"
  value       = module.s3_and_ec2.instance_ids
}

output "instance_public_ips" {
  description = "The public IP addresses of the EC2 instances"
  value       = module.s3_and_ec2.instance_public_ips
}

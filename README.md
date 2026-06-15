# iacm-terraform-basics

A basic Terraform configuration that provisions an AWS S3 bucket.

## Files
- `main.tf`: Contains the AWS provider configuration and S3 bucket resource.
- `variables.tf`: Defines input variables (bucket name, region, tags).
- `outputs.tf`: Exposes the bucket ID and ARN.
- `backend.tf`: Configures remote state storage using S3 and DynamoDB.

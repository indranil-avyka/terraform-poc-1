variable "resource_name" {
  description = "Name of the S3 bucket (must be globally unique)"
  type        = string
}

variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default     = {}
}

variable "environment" {
  description = "Deployment environment (dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "state_bucket" {
  description = "S3 bucket name used for Terraform remote state"
  type        = string
}

variable "state_bucket_region" {
  description = "Region where the Terraform state S3 bucket lives"
  type        = string
  default     = "us-east-1"
}

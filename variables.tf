variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "region" {
  description = "The AWS region to deploy to"
  type        = string
  default     = "us-east-1"
}

variable "tags" {
  description = "Tags to apply to the resources"
  type        = map(string)
  default = {
    Environment = "Dev"
    Project     = "iacm-terraform-basics"
  }
}

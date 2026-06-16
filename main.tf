provider "aws" {
  region = var.region
}

# Generates a dynamic, random suffix to guarantee global uniqueness
resource "random_id" "bucket_suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "main" {
  # Dynamically constructs the bucket name (e.g., dev-iacm-bucket-a1b2c3)
  bucket = "${var.environment}-${var.resource_name}-${random_id.bucket_suffix.hex}"

  tags = merge(
    var.tags,
    {
      Name        = "${var.environment}-${var.resource_name}-${random_id.bucket_suffix.hex}"
      Environment = var.environment
    }
  )
}

resource "aws_s3_bucket_versioning" "main" {
  bucket = aws_s3_bucket.main.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "main" {
  bucket = aws_s3_bucket.main.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "main" {
  bucket = aws_s3_bucket.main.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

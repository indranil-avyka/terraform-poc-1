provider "aws" {
  region = var.region
}

module "s3_and_ec2" {
  source = "oci://660463066710.dkr.ecr.us-east-1.amazonaws.com/tofu-modules/s3-bucket?tag=1.0.0"

  environment   = var.environment
  resource_name = var.resource_name
  tags          = var.tags
  region        = var.region
}

# Move state for random suffix generator
moved {
  from = random_id.bucket_suffix
  to   = module.s3_and_ec2.random_id.bucket_suffix
}

# Move state for S3 bucket resources
moved {
  from = aws_s3_bucket.main
  to   = module.s3_and_ec2.aws_s3_bucket.main
}

moved {
  from = aws_s3_bucket_versioning.main
  to   = module.s3_and_ec2.aws_s3_bucket_versioning.main
}

moved {
  from = aws_s3_bucket_server_side_encryption_configuration.main
  to   = module.s3_and_ec2.aws_s3_bucket_server_side_encryption_configuration.main
}

moved {
  from = aws_s3_bucket_public_access_block.main
  to   = module.s3_and_ec2.aws_s3_bucket_public_access_block.main
}

# Move state for EC2 instances
moved {
  from = aws_instance.web
  to   = module.s3_and_ec2.aws_instance.web
}

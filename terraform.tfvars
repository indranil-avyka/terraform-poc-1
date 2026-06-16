resource_name = "indranil-iacm-bucket "
region        = "us-east-1"
environment   = "dev"

tags = {
  Project     = "iacm-terraform-basics"
  Environment = "dev"
  ManagedBy   = "Terraform"
  Owner       = "indranil"
}

state_bucket        = "indranil-iacm-bucket"
state_bucket_region = "us-east-1"

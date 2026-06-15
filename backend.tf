terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "iacm-terraform-basics/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

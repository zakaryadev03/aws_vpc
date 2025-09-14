provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "backend_bucket" {
  bucket = "sud-terraform-eks-state-bucket"

  lifecycle {
    prevent_destroy = false
  }
}

resource "aws_dynamodb_table" "dynamodb-state-lock" {
  name           = "terraform-eks-state-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "IDlock"

  attribute {
    name = "IDlock"
    type = "S"
  }
}
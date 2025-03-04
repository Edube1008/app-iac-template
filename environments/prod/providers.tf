
provider "aws" {
  region = "ca-central-1"

}

terraform {
  backend "s3" {
    bucket         = "backend-prd-git-terraform-bucket"  # S3 Bucket for state file
    key            = "prd/terraform.tfstate"             # State file path in S3
    region         = "ca-central-1"                      # Region of S3 bucket
    dynamodb_table = "terraform-dynamo-prd-dev-table"          # DynamoDB table for locking
    encrypt        = true
  }
}
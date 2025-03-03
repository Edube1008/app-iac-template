terraform {
  backend "s3" {
    bucket         = "backend-dev-git-terraform-bucket"  # S3 Bucket for state file
    key            = "env/terraform.tfstate"             # State file path in S3
    region         = "ca-central-1"                      # Region of S3 bucket
    dynamodb_table = "terraform-dynamo-db-dev-table"          # DynamoDB table for locking
    encrypt        = true
  }
}
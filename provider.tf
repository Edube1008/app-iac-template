provider "aws" {
  region = "ca-central-1"

  assume_role {
    role_arn     = var.aws_role_arn
    session_name = "terraform-deployment"
  }
}

variable "aws_role_arn" {
  description = "IAM role ARN for Terraform execution"
  type        = string
}

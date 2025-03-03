terraform {
  required_version = ">= 1.5.0"
}

provider "aws" {
  region = "ca-central-1"

}

module "s3" {
  source = "./modules/storage/s3"

  bucket_name       = var.bucket_name
  lifecycle_days    = var.lifecycle_days
  bucket_prefix     = var.bucket_prefix
  versioning        = var.versioning
  tags              = var.tags
  create            = var.create
  Enable_eventbridge = var.Enable_eventbridge
  enable_logging    = var.enable_logging
  enable_bucket     = var.enable_bucket
}

 assume_role {
    role_arn     = arn:aws:iam::034362057200:role/prd-app-iac-template
    session_name = "terraform-deployment"
  }


aws_role_arn = "arn:aws:iam::034362057200:role/prd-app-iac-template"

module "s3" {
  source = "../../modules/storage/s3"


bucket_name        = "the-good-old-days"
lifecycle_days     = 90
bucket_prefix      = "prod-bucket-prefix"
versioning         = true
tags = {
  Env              = "Prod"
  ApplicationName  = "Tina-App"
  APMID            = "APM-123456"
  SupportStatus    = "Supported"
  BillingIndicator = "BI-XYZ"
  DataSensitivity  = "Confidential"
  Compliance       = "PCI-DSS"
}
create              = true
Enable_eventbridge  = true
enable_logging      = false
}
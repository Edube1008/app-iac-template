bucket_name        = "the-good-old-days"
lifecycle_days     = 90
bucket_prefix      = "dev-bucket-prefix"
versioning         = true
tags = {
  Env              = "Dev"
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

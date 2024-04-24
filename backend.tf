terraform {
  backend "s3" {
    bucket = var.s3_bucket_name
    key    = var.s3_key
    region = var.aws_region
  }
}

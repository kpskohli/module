terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0.0"
    }
  }
}

# provider "aws" {
#   region = var.region
# }

resource "aws_s3_bucket" "bucket" {
  bucket = "${var.bucket_prefix}-${var.bucket_name}"

  force_destroy       = var.force_destroy
  tags                = var.tags

  lifecycle {
    ignore_changes = [
      acceleration_status,
      acl,
      grant,
      cors_rule,
      lifecycle_rule,
      logging,
      object_lock_configuration,
      replication_configuration,
      request_payer,
      server_side_encryption_configuration,
      versioning,
      website
    ]
  }
}

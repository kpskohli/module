module "aws-s3-bucket" {
  source                    = "../"
  s3_bucket_name            = "test"
  s3_bucket_force_destroy   = "true"

  tags = {
    Name                    = "Test Bucket"
    Environment             = "Dev"
  }
}

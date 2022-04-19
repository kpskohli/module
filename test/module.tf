module "aws-s3-bucket" {
  source                = "../"
  bucket_name           = "test-kanwar"
  tags = {
    Name                = "Test Bucket"
    Environment          = "Dev"
  }
}

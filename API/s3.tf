resource "aws_s3_bucket" "example_bucket" {
  bucket = "example-bucket"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }

  tags = {
    Environment = "Production"
  }
}
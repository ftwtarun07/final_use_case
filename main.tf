provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "static_site" {
  bucket = "my-static-site-bucket-123456"
  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}

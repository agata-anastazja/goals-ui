resource "aws_s3_bucket" "mybucket" {
  bucket = "agata-goals.com"
  
}

resource "aws_s3_bucket_website_configuration" "mybucket" {
  bucket = aws_s3_bucket.mybucket.id

  index_document {
    suffix = "index.html"
  }
}

resource "aws_s3_object" "index_html" {

  bucket = aws_s3_bucket.mybucket.bucket
  key    = "index.html"
  source = "../src/index.html"
  etag   = filemd5("../src/index.html")
  content_type = "text/html"
}
resource "random_id" "bucket_suffix" {
  byte_length = 6
}

resource "aws_s3_bucket" "firstproject_s3_bucket" {
  bucket = "firstproject-s3-bucket-${random_id.bucket_suffix.hex}"
}

output "bucket_name" {
  value = aws_s3_bucket.firstproject_s3_bucket.bucket
}

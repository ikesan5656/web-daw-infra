# S3のbucketを作成する
resource "aws_s3_bucket" "front" {
  bucket = "terraform-sample-bucket-ikesan"

  tags = {
    Name = "terraform-sample"
  }
}

# パブリックアクセスをブロックする設定
resource "aws_s3_bucket_public_access_block" "front" {
  bucket                  = aws_s3_bucket.front.bucket
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}


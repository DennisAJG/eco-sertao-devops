resource "aws_s3_bucket" "bucket_eco_sertao_tfstate" {
  bucket = var.name_bucket_eco_sertao_tfstate


  tags = {
    Name        = "eco-sertao-s3-terraform-tfstate"
    Environment = "prd"
  }
}

#resource "aws_s3_bucket_acl" "s3_eco_sertao_tfstate_acl" {
#  depends_on = [aws_s3_bucket.bucket_eco_sertao_tfstate]
#  bucket     = aws_s3_bucket.bucket_eco_sertao_tfstate.id
#  acl        = "private"
#}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.bucket_eco_sertao_tfstate.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.bucket_eco_sertao_tfstate.id
  versioning_configuration {
    status = "Enabled"
  }
}
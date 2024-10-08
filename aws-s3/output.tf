output "arn_s3_eco_sertao_tfstate" {
  description = "Informação do arn da s3"
  value       = aws_s3_bucket.bucket_eco_sertao_tfstate.arn
}
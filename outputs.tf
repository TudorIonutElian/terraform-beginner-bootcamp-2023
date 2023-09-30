output "bucket_name" {
  value = module.terrahouse_aws.bucket_name
}

#s3_website_endpoint
output "s3_website_endpoint" {
  description = "S3 Static Website hosting endpoint"
  value = module.terrahouse_aws.website_endpoint
}
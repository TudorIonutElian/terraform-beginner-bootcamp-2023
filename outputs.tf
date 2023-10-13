output "bucket_name" {
  value = module.terrahouse_aws.bucket_name
}

#s3_website_endpoint
output "s3_website_endpoint" {
  description = "S3 Static Website hosting endpoint"
  value = module.terrahouse_aws.website_endpoint
}

# expose cloud_front domain name from child module
output "cloudfront_url" {
  description = "The CloudFront Distribution Domain Name"
  value = module.terrahouse_aws.cloudfront_url
}
output "bucket_name" {
  value = module.farming_simulator_hosting.bucket_name
}

#s3_website_endpoint
output "s3_website_endpoint" {
  description = "S3 Static Website hosting endpoint"
  value = module.farming_simulator_hosting.website_endpoint
}

# expose cloud_front domain name from child module
output "cloudfront_url" {
  description = "The CloudFront Distribution Domain Name"
  value = module.farming_simulator_hosting.domain_name
}
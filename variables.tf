# Declare variable for user_uuid and validation
variable "user_uuid" {
  description = "The UUID of the user"
}

# Declare variable for bucket name and validation rules
variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}
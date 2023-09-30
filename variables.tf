# Declare variable for user_uuid and validation
variable "user_uuid" {
  description = "The UUID of the user"
}

# Declare variable for bucket name and validation rules
variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  //default     = "zxdsstpbibd86fj1p5fpvlha9k7p8zrr"
}

# Declare variable for index_html_filepath
variable "index_html_filepath" {
  type = string
}

# Declare variable for error_html_filepath
variable "error_html_filepath" {
  type = string
}
# Declare variable for user_uuid and validation
variable "user_uuid" {
  description = "The UUID of the user"
}

# Declare variable for bucket name and validation rules (will be passed to child module)
variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  //default     = "zxdsstpbibd86fj1p5fpvlha9k7p8zrr"
}

# Declare variable for index_html_filepath (will be passed to child module)
variable "index_html_filepath" {
  type = string
}

# Declare variable for error_html_filepath (will be passed to child module)
variable "error_html_filepath" {
  type = string
}

# Declare variable for content version (will be passed to child module)
variable "content_version" {
  type        = number
}

# Declare variable for assets_path (will be passed to child module)
variable "assets_path" {
  description = "Path to assets folder"
  type = string
}

variable "terratowns_endpoint" {
 type = string
}

variable "terratowns_access_token" {
 type = string
}

variable "teacherseat_user_uuid" {
 type = string
}

variable "farming_simulator" {
  type = object({
    public_path = string
    content_version = number
  })
}

variable "bucharest_travel" {
  type = object({
    public_path = string
    content_version = number
  })
}
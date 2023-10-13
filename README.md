# Terraform Beginner Bootcamp 2023

## Versions
> 1.5.2
 - added outputs from scripts

> 1.5.1
 - moved CP tfvars example to be copied from a script

> 1.5.0
 - using of aws_caller_identity
 - added cloudfront distribution
 - added s3 bucket_policy

> 1.4.0
 - added path for files into variables
 - added bucket configuration
 - added endpoint outputs

> 1.3.0
 - added terrahouse_aws module
 - https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket
 - https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html?icmpid=docs_amazons3_console

> 1.2.0
 - updated bucket name as resource from example to website_bucket
 - updated outputs that were default to bucket_name 
 - removed random provider
 - added bucket name and bucket name validator for this variable


> 1.1.0
 - added piece of code to copy tfvars.example into tfvars

> 0.9.0
 - added bin/set_tf_alias script to set alias for tf usage
 - changed .gitpod.yml to run bin/set_tf_alias script file

> 0.8.0
 - updated token for using into cloud state saver

> 0.7.0
 - added cloud backend for terraform state keeper

> 0.6.0
 - added aws_s3_bucket resource to be created

> 0.4.0 + 0.5.0
1. Updated .gitpod.yml file in order to install terraform properly
2. Updated .terraform.lock.hcl file after apply and destroy steps
3. Added main.tf file
   - configured terraform block
   - configured random provider
   - added **resource** random_string 
   - added output form random string which will be bucket name

> 0.3.0
1. Added / updated bin/install_terraform_cli file

> 0.2.0
1.  Added / updated bin/install_terraform_cli script file

> 0.1.0
1. Added readme.md file


## Useful Links
[First URL]()
## Code snippets
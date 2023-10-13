# Terraform Beginner Bootcamp 2023

## Versions
> 2.6.0
 - back to cloud state keeper
 - added 2 modules with 2 houses
 - set public paths into variables
 - updated some image resources
 - ready to submit

> 2.5.0
 - updated bucket resources to be dynamic every time (not needed but why not)
 - moved some hardcoded values into variables and example file also

> 2.4.0
 - (WIP) updated terraform-provider-terratowns endpoint
 - added first home terratowns_home

> 2.3.0
 - updated terraform-provider-terratowns/go.mod (WIP)

> 2.2.0
 - added TF_LOG to env
 - updated some paths to bin/build_provider script
 - added terratowns provider into main.tf

> 2.1.0
 - updated .gitignore file
 - set build_provider script
 - added terraformrc file

> 2.0.0
 - added instructions to move into project root for each terminal and task
 - added sinatra mock server task
 - added scripts to create, update, read delete (CRUD)
 - added LICENSE


> 1.8.2
 - added another extensions to be forced when gitpod starts

> 1.8.1
 - added some extensions to be forced when gitpod starts

> 1.8.0
 - added http server
 - uptdated assets path variable
 - updated assets to be uploaded with for_each
 - added new image resources

> 1.7.0
 - added outputs for cloudfront_url
 - added invalidator trigger
 - expose cloudfront_url domain

> 1.6.0
 - added content version to terrahouse_aws
 - added trigger to replace terrahouse_aws
 - added public directory for resources (html, images, etc)

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
[AboutInstall TF Cli](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

[About Check OS Version](https://www.cyberciti.biz/faq/how-to-check-os-version-in-linux-command-line/)

[About What Shebang](https://en.wikipedia.org/wiki/Shebang_(Unix))

[About Chmod Wiki](https://en.wikipedia.org/wiki/Chmod)

[About Gitpod tasks](https://www.gitpod.io/docs/configure/workspaces/tasks)

[About AWS Cli](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

[About AWS Cli ENV](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html)

[About Random TF Provider](https://registry.terraform.io/providers/hashicorp/random)

[About Git tags](https://devconnected.com/how-to-delete-local-and-remote-tags-on-git/)

[About Standard Structured Module](https://developer.hashicorp.com/terraform/language/modules/develop/structure)

[About TF Input vars](https://developer.hashicorp.com/terraform/language/values/variables)

[About TF Import](https://developer.hashicorp.com/terraform/cli/import)

[About AWS S3 bucket import](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#import)

[About Function fileexists](https://developer.hashicorp.com/terraform/language/functions/fileexists)

[About Local Values](https://developer.hashicorp.com/terraform/language/values/locals)

[About Data Sources](https://developer.hashicorp.com/terraform/language/data-sources)

[About JSONENCODE](https://developer.hashicorp.com/terraform/language/functions/jsonencode)

[About Args Lifecycle](https://developer.hashicorp.com/terraform/language/meta-arguments/lifecycle)

[About Provisioners](https://developer.hashicorp.com/terraform/language/resources/provisioners/syntax)

[About TF Foreach](https://developer.hashicorp.com/terraform/language/expressions/for)

[About Sinatra](https://sinatrarb.com/)

[About CRUD](https://en.wikipedia.org/wiki/Create,_read,_update_and_delete)

## Code snippets

### OS Check
```
$ cat /etc/os-release

PRETTY_NAME="Ubuntu 22.04.3 LTS"
NAME="Ubuntu"
VERSION_ID="22.04"
VERSION="22.04.3 LTS (Jammy Jellyfish)"
VERSION_CODENAME=jammy
ID=ubuntu
ID_LIKE=debian
HOME_URL="https://www.ubuntu.com/"
SUPPORT_URL="https://help.ubuntu.com/"
BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
UBUNTU_CODENAME=jammy
```

### Delete local tag (git)
```
git tag -d <tag_name>
```

### Delete origin tag (git)
```
git push --delete origin tagname
```

### Project root
```
PROJECT_ROOT
│
├── main.tf                 # everything else.
├── variables.tf            # stores the structure of input variables
├── terraform.tfvars        # the data of variables we want to load into our terraform project
├── providers.tf            # defined required providers and their configuration
├── outputs.tf              # stores our outputs
└── README.md               # required for root modules
```

### Terrraform Refresh
```
terraform apply -refresh-only -auto-approve
```

### Module example
```
module "terrahouse_aws" {
  source = "./modules/terrahouse_aws"
}
```

### Data sources

```
data "aws_caller_identity" "current" {}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}
```

### JSONEncode
```
> jsonencode({"hello"="world"})
{"hello":"world"}
```

### Local exec
```
resource "aws_instance" "web" {
  # ...

  provisioner "local-exec" {
    command = "echo The server's IP address is ${self.private_ip}"
  }
}
```

### Remote exec
```
resource "aws_instance" "web" {
  # ...

  # Establishes connection to be used by all
  # generic remote provisioners (i.e. file/remote-exec)
  connection {
    type     = "ssh"
    user     = "root"
    password = var.root_password
    host     = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "puppet apply",
      "consul join ${aws_instance.web.private_ip}",
    ]
  }
}
```

```tf
[for s in var.list : upper(s)]
```

```ruby
bundle install
bundle exec ruby server.rb
```

```ruby
source "https://rubygems.org"

gem 'sinatra'
gem 'rake'
gem 'pry'
gem 'puma'
gem 'activerecord'
```
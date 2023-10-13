terraform {
    required_providers {
      terratowns = {
        source = "local.providers/local/terratowns"
        version = "1.0.0"
      }
    }
  #backend "remote" {
  #  hostname = "app.terraform.io"
  #  organization = "ExamPro"

  #  workspaces {
  #    name = "terra-house-1"
  #  }
  #}
  cloud {
    organization = "IonutElianTudorOrganization"
    workspaces {
      name = "terraform-bootcamp-2023"
    }
  }

}

provider "terratowns" {
  endpoint = var.terratowns_endpoint
  user_uuid = var.teacherseat_user_uuid
  token = var.terratowns_access_token
}

module "farming_simulator_hosting" {
  source = "./modules/terrahome_aws"
  user_uuid = var.teacherseat_user_uuid
  #bucket_name = var.bucket_name
  public_path = var.farming_simulator.public_path
  content_version = var.content_version
}

resource "terratowns_home" "farming_simulator" {
  name = "How to play Farming Simulator in 2023!"
  description = <<DESCRIPTION
Farming Simulator 22, often abbreviated as FS 22, is the latest installment in the popular simulation video game series developed by Giants Software. Released in November 2021, FS 22 builds upon the success of its predecessors, 
offering players an immersive and realistic farming experience. The game allows players to step into the boots of a virtual farmer, managing their own agricultural operations, cultivating crops, tending to livestock, and operating a wide 
array of farming machinery and equipment. With improved graphics, an expanded range of crops and animals, and enhanced gameplay mechanics, 
FS 22 provides an authentic and engaging simulation of modern farming, 
appealing to both dedicated fans of the series and newcomers looking to explore the joys and challenges of agricultural life.
DESCRIPTION
  #domain_name = module.terrahouse_aws.cloudfront_url
  domain_name = module.farming_simulator_hosting.domain_name
  town = "video-valley"
  content_version = var.farming_simulator.content_version
}

module "bucharest_travel" {
  source = "./modules/terrahome_aws"
  user_uuid = var.teacherseat_user_uuid
  public_path = var.bucharest_travel.public_path
  content_version = var.bucharest_travel.content_version
}

resource "terratowns_home" "bucharest_travel" {
  name = "Making your Payday Bar"
  description = <<DESCRIPTION
    Bucharest, the capital of Romania, is a vibrant city known for its rich history, diverse architecture, 
    and bustling nightlife. Its blend of communist-era landmarks and modern developments make it a 
    dynamic and fascinating destination for travelers.
DESCRIPTION
  domain_name = module.bucharest_travel.domain_name
  town = "video-valley"
  content_version = var.bucharest_travel.content_version
}
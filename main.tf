terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
  profile = "default"
}

module "ec2" {
  source = "./ec2"
  ec2name = "My_db_server"
}

output "modules_output" {
  value = module.ec2.instance_id 
}

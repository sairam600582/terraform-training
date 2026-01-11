provider "aws" {
  region = var.region
}

module "ec2-instance" {
  source = "./EC2-instance"
  
}

module "vpc" {
  source = "./VPC"
}
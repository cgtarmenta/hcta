# Configure the AWS Provider
provider "aws" {
  profile = var.aws_profile
  region  = var.aws_region
}

#Retrieve the list of AZs in the current AWS region
data "aws_availability_zones" "available" {}
data "aws_region" "current" {}
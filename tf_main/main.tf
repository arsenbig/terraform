provider "aws" {
  region = var.region
}

module "ec2" {
  source = "../tf_modules/ec2"
}

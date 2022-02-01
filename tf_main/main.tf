provider "aws" {
  region = var.region
}

module "ec2" {
  source = "../tf_modules/ec2"
  ebs_voluem_id = module.ebs.volume_id
}

module "ebs" {
  source = "../tf_modules/ebs"
}

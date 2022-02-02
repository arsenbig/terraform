provider "aws" {
  region = var.region
}

module "ec2" {
  source        = "../tf_modules/ec2"
  ebs_voluem_id = module.ebs.id
}

module "ebs" {
  source            = "../tf_modules/ebs"
  availability_zone = "us-east-2b"
  size              = 2
  ebs               = "My_Volume"
  # prevent_destroy         = false
}

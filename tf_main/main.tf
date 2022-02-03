provider "aws" {
  region = var.region
}

module "ec2" {
  source        = "../tf_modules/ec2"
  ebs_volume_id = module.ebs.id
}

module "ebs" {
  source            = "../tf_modules/ebs"
  availability_zone = "us-east-2b"
  size              = 2
  ebs               = "this_volume"
  tags              = { Org = "Any", Env = "Test"}
  # prevent_destroy         = false
}

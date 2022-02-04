locals {
  availability_zone = "us-east-1b"
  tags              = { Org = "Any", Env = "Test" }
}

provider "aws" {
  region = var.region
}

module "ec2" {
  source            = "../tf_modules/ec2"
  availability_zone = local.availability_zone
  ami               = "ami-0a8b4cd432b1c3063"
  volumes = {
    "volume1" = {
      volume_id   = module.ebs-1.id
      device_name = "/dev/sdh"
    }
    "volume2" = {
      volume_id   = module.ebs-2.id
      device_name = "/dev/sdg"
    }
  }
}

module "ebs-1" {
  source            = "../tf_modules/ebs"
  availability_zone = local.availability_zone
  size              = 2
  ebs               = "this_volume1"
  tags              = local.tags
  prevent_destroy   = false
}

module "ebs-2" {
  source            = "../tf_modules/ebs"
  availability_zone = local.availability_zone
  size              = 2
  ebs               = "this_volume2"
  tags              = local.tags
  prevent_destroy   = false
}

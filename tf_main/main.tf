provider "aws" {
  region = var.region
}

module "ec2" {
  source            = "../tf_modules/ec2"
  availability_zone = "us-east-1b"
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
  availability_zone = "us-east-1b"
  size              = 2
  ebs               = "this_volume1"
  tags              = { Org = "Any", Env = "Test" }
  prevent_destroy   = false

}

module "ebs-2" {
  source            = "../tf_modules/ebs"
  availability_zone = "us-east-1b"
  size              = 2
  ebs               = "this_volume2"
  tags              = { Org = "Any", Env = "Test" }
  prevent_destroy   = true

}

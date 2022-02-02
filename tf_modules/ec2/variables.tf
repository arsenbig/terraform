
variable "ec2_type" {
  default = "t2.micro"
}

variable "ami" {
  default = ""
}

variable "az" {
  default = "us-east-2b"
}

variable "use_custom_ami" {
  type    = bool
  default = false
}

variable "volume_name" {
  type    = string
  default = "/dev/sdh"
}


variable "ebs_voluem_id" {
  default = ""
}

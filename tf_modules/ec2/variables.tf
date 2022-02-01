
variable "ec2_type" {
  default = "t2.micro"
}

variable "ami" {
 default = ""
}

variable "use_custom_ami" {
  type = bool
  default = false
}

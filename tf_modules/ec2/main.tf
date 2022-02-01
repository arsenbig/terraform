resource "aws_instance" "my_ec2" {
  ami           = var.use_custom_ami ? var.ami : data.aws_ami.amazon_linux.id
  instance_type = var.ec2_type

  tags = {
    Name = "EPAM"
  }
}
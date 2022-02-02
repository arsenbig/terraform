resource "aws_instance" "my_ec2" {
  ami               = var.use_custom_ami ? var.ami : data.aws_ami.amazon_linux.id
  instance_type     = var.ec2_type
  availability_zone = var.az

  tags = {
    Name = "EPAM"
  }
}

resource "aws_volume_attachment" "ebs_ec2" {
  device_name = var.volume_name
  volume_id   = var.ebs_voluem_id
  instance_id = aws_instance.my_ec2.id
}

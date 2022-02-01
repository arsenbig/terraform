resource "aws_ebs_volume" "my_ebs" {
  availability_zone = var.az
  size              = var.ebs_size

  tags = {
    Name = "EPAM"
  }

  lifecycle {
    prevent_destroy = true
  }
}

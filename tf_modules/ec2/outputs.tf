output "id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.my_ec2.id
}

output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.my_ec2.public_ip
}

output "private_ip" {
  description = "Private IP address of the EC2 instance"
  value       = aws_instance.my_ec2.private_ip
}

output "latest_amazon_linux_ami" {
  value = data.aws_ami.amazon_linux.id
}

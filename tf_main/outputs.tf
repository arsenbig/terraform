output "ec2_id" {
  description = "ID of the EC2 instance"
  value       = module.ec2.id
}

output "ec2_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = module.ec2.public_ip
}

output "ec2_private_ip" {
  description = "Private IP of the EC2 instance"
  value       = module.ec2.private_ip
}

output "volume_id" {
  description = "ID of the EBS"
  value       = module.ebs.id
}

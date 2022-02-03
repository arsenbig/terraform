output "ec2_id" {
  description = "ID of the EC2 instance"
  value       = module.ec2.id
}

output "volume_id" {
  description = "ID of the EBS"
  value       = module.ebs.id
}

output "id" {
  description = "ID of the volume"
  value       = aws_ebs_volume.this.id
}

output "arn" {
  description = "ARN of the volume"
  value       = aws_ebs_volume.this.arn
}

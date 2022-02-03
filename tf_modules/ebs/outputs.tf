output "id" {
  description = "ID of the volume"
  value       = compact([one(aws_ebs_volume.this_protected[*].id), one(aws_ebs_volume.this_unprotected[*].id)])[0]
}
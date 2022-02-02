resource "aws_ebs_volume" "this" {
  availability_zone    = var.availability_zone
  size                 = var.size
  encrypted            = var.encrypted
  iops                 = var.iops
  multi_attach_enabled = var.multi_attach_enabled
  snapshot_id          = var.snapshot_id
  type                 = var.type
  kms_key_id           = var.kms_key_id
  throughput           = var.throughput

  tags = merge(var.tags, { "Name" = var.ebs })


  lifecycle {
    prevent_destroy = false
  }
}

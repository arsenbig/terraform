
variable "size" {
  description = "The size of the drive in GiBs"
  type        = number
}

variable "availability_zone" {
  description = "The AZ where the EBS volume will exist"
  type        = string
}

variable "encrypted" {
  description = "The disk will be encrypted"
  type        = bool
  default     = false
}

variable "iops" {
  description = "The amount of IOPS to provision for the disk. Only valid for type of io1, io2 or gp3"
  type        = number
  default     = null
}

variable "multi_attach_enabled" {
  description = "Specifies whether to enable Amazon EBS Multi-Attach. Multi-Attach is supported exclusively on io1 volumes"
  type        = bool
  default     = false
}

variable "snapshot_id" {
  description = "A snapshot to base the EBS volume off of"
  type        = string
  default     = null
}

variable "type" {
  description = "The type of EBS volume. Can be standard, gp2, gp3, io1, io2, sc1 or st1 (Default: gp2)"
  type        = string
  default     = "gp2"
}

variable "kms_key_id" {
  description = "The ARN for the KMS encryption key. When specifying kms_key_id, encrypted needs to be set to true. Note: Terraform must be running with credentials which have the GenerateDataKeyWithoutPlaintext permission on the specified KMS key as required by the EBS KMS CMK volume provisioning process to prevent a volume from being created and almost immediately deleted"
  type        = string
  default     = null
}

variable "tags" {
  description = "A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level"
  type        = map(any)
  default     = {}
}

variable "throughput" {
  description = "The throughput that the volume supports, in MiB/s. Only valid for type of gp3"
  type        = number
  default     = null
}

variable "ebs" {
  description = "The name of the EBS."
  type        = string
}

variable "prevent_destroy" {
  description = "Deletion protection of the EBS volume"
  type        = bool
  default     = null
}
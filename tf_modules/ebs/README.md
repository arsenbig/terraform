# EBS Module

Creates EBS volume.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.1.2 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.60 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 3.60 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ebs_volume.this_protected](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ebs_volume) | resource |
| [aws_ebs_volume.this_unprotected](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ebs_volume) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | The AZ where the EBS volume will exist | `string` | n/a | yes |
| <a name="input_ebs"></a> [ebs](#input\_ebs) | The name of the EBS. | `string` | n/a | yes |
| <a name="input_encrypted"></a> [encrypted](#input\_encrypted) | The disk will be encrypted | `bool` | `false` | no |
| <a name="input_iops"></a> [iops](#input\_iops) | The amount of IOPS to provision for the disk. Only valid for type of io1, io2 or gp3 | `number` | `null` | no |
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | The ARN for the KMS encryption key. When specifying kms\_key\_id, encrypted needs to be set to true. Note: Terraform must be running with credentials which have the GenerateDataKeyWithoutPlaintext permission on the specified KMS key as required by the EBS KMS CMK volume provisioning process to prevent a volume from being created and almost immediately deleted | `string` | `null` | no |
| <a name="input_multi_attach_enabled"></a> [multi\_attach\_enabled](#input\_multi\_attach\_enabled) | Specifies whether to enable Amazon EBS Multi-Attach. Multi-Attach is supported exclusively on io1 volumes | `bool` | `false` | no |
| <a name="input_prevent_destroy"></a> [prevent\_destroy](#input\_prevent\_destroy) | Deletion protection of the EBS volume | `bool` | `null` | no |
| <a name="input_size"></a> [size](#input\_size) | The size of the drive in GiBs | `number` | n/a | yes |
| <a name="input_snapshot_id"></a> [snapshot\_id](#input\_snapshot\_id) | A snapshot to base the EBS volume off of | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the resource. If configured with a provider default\_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level | `map(any)` | `{}` | no |
| <a name="input_throughput"></a> [throughput](#input\_throughput) | The throughput that the volume supports, in MiB/s. Only valid for type of gp3 | `number` | `null` | no |
| <a name="input_type"></a> [type](#input\_type) | The type of EBS volume. Can be standard, gp2, gp3, io1, io2, sc1 or st1 (Default: gp2) | `string` | `"gp2"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | ID of the volume |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
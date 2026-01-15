variable "name_prefix" {
  description = "Prefix for all backup resources"
  type        = string
}

variable "primary_region" {
  type = string
}

variable "secondary_region" {
  type = string
}

variable "primary_kms_key_arn" {
  description = "KMS key ARN for backup encryption in the primary region"
  type        = string
}

variable "secondary_kms_key_arn" {
  description = "KMS key ARN for backup encryption in the secondary region"
  type        = string
}

variable "backup_schedule" {
  description = "AWS Backup cron schedule"
  type        = string
  default     = "cron(0 2 * * ? *)"
}

variable "retention_days" {
  type    = number
  default = 35
}

variable "copy_retention_days" {
  type    = number
  default = 90
}

variable "backup_tag_key" {
  type    = string
  default = "ToBackup"
}

variable "backup_tag_value" {
  type    = string
  default = "true"
}

variable "owner_tag_value" {
  description = "Owner/team name"
  type        = string
}

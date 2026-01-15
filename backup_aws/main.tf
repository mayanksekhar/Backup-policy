resource "aws_backup_vault" "primary" {
  name        = "${var.name_prefix}-primary-vault"
  kms_key_arn = var.primary_kms_key_arn
}

resource "aws_backup_vault" "secondary" {
  provider    = aws.secondary
  name        = "${var.name_prefix}-secondary-vault"
  kms_key_arn = var.secondary_kms_key_arn
}

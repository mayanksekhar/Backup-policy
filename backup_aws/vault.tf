resource "aws_backup_vault_lock_configuration" "lock" {
  backup_vault_name   = aws_backup_vault.primary.name
  min_retention_days  = var.retention_days
  max_retention_days  = var.copy_retention_days
  changeable_for_days = 7
}

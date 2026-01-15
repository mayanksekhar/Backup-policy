output "backup_plan_id" {
  value = aws_backup_plan.plan.id
}

output "primary_vault" {
  value = aws_backup_vault.primary.name
}

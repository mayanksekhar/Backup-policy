resource "aws_backup_selection" "selection" {
  name          = "${var.name_prefix}-tag-selection"
  plan_id       = aws_backup_plan.plan.id
  iam_role_arn = aws_iam_role.backup_role.arn

  selection_tag {
    type  = "STRINGEQUALS"
    key   = var.backup_tag_key
    value = var.backup_tag_value
  }

  selection_tag {
    type  = "STRINGEQUALS"
    key   = "Owner"
    value = var.owner_tag_value
  }
}

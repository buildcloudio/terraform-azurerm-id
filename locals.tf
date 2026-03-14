locals {
  user_assigned_identity_name = lower("${var.subscription}-${var.environment}-${var.usecase}-id")
}

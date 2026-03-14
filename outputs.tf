output "id" {
  description = "The ID of the created user assigned managed identity"
  value       = azurerm_user_assigned_identity.uai.id
}

output "name" {
  description = "The name of the created user assigned managed identity"
  value       = azurerm_user_assigned_identity.uai.name
}

output "client_id" {
  description = "The client ID of the created user assigned managed identity"
  value       = azurerm_user_assigned_identity.uai.client_id
}

output "principal_id" {
  description = "The principal ID of the created user assigned managed identity"
  value       = azurerm_user_assigned_identity.uai.principal_id
}

output "tenant_id" {
  description = "The tenant ID of the created user assigned managed identity"
  value       = azurerm_user_assigned_identity.uai.tenant_id
}

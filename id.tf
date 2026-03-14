#------------------------------------------------------------------
# Create user assigned managed identity
#------------------------------------------------------------------

resource "azurerm_user_assigned_identity" "id" {
  name                = local.user_assigned_identity_name
  location            = var.location
  resource_group_name = var.resource_group_name
}

#------------------------------------------------------------------
module "buildcloudio_azure_id" {
  for_each            = { for each in var.user_assigned_identities : each.usecase => each }
  source              = "../"
  subscription        = each.value.subscription
  environment         = each.value.environment
  usecase             = each.value.usecase
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
}
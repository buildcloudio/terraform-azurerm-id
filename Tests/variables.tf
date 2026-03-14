variable "user_assigned_identities" {
  description = "Map of user assigned managed identities to create"
  type = map(object({
    subscription        = string
    environment         = string
    usecase             = string
    location            = string
    resource_group_name = string
  }))
}

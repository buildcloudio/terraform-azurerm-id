# terraform-azurerm-id

Terraform module to manage Azure User Assigned Managed Identities.

## Usage

### module.tf
```hcl
module "user_assigned_identity" {
  source       = "registry.buildcloudio.dev/buildcloudio/id/azurerm"
  version      = "1.0.0"

  for_each            = { for each in var.user_assigned_identities : each.usecase => each }
  subscription        = each.value.subscription
  environment         = each.value.environment
  usecase             = each.value.usecase
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
}
```

### variables.tf
```hcl
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
```

### module.tf.tfvars
```hcl
user_assigned_identities = {
  "uai1" = {
    subscription        = "buildcloudio"
    environment         = "dev"
    usecase             = "test"
    location            = "westeurope"
    resource_group_name = "buildcloudio-dev-test-rg"
  }
}
```

### main.tf
```hcl
terraform {
  #backend "azurerm" {}

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.61.0"
    }
  }
}

provider "azurerm" {
  features {}
}
```

### outputs.tf
```hcl
```

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|----------|
| subscription | Azure subscription identifier | string | ✅ |
| environment | Environment name (e.g., dev, staging, prod) | string | ✅ |
| usecase | Use case or service name for the user assigned managed identity | string | ✅ |
| location | Azure region | string | ✅ |
| resource_group_name | Name of the resource group in which to create the identity | string | ✅ |

## Outputs

| Name | Description |
|------|-------------|
| id | User Assigned Managed Identity ID |
| name | User Assigned Managed Identity name |
| client_id | Client ID of the managed identity |
| principal_id | Principal ID of the managed identity |
| tenant_id | Tenant ID of the managed identity |

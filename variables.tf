variable "subscription" {
  description = "Azure subscription identifier"
  type        = string
}

variable "environment" {
  description = "Environment name (e.g., dev, staging, prod)"
  type        = string
}

variable "usecase" {
  description = "Use case or service name for the user assigned managed identity"
  type        = string
}

variable "location" {
  description = "Azure region for the user assigned managed identity (e.g., East US, West US)"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group in which to create the user assigned managed identity"
  type        = string
}

variable "postgres_branches_lookup" {
  description = <<EOT
Map of postgres_branches_lookup, attributes below
Required:
    - parent
Optional:
    - page_size
    - provider_config
    - show_deleted
EOT

  type = map(object({
    parent    = string
    page_size = optional(number)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
    show_deleted = optional(bool)
  }))
}


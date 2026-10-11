output "postgres_branches_lookup_branches" {
  description = "Map of branches values across all postgres_branches_lookup, keyed the same as var.postgres_branches_lookup except keys with no branches are omitted"
  value       = { for k, v in data.databricks_postgres_branches.postgres_branches_lookup : k => v.branches if v.branches != null && length(v.branches) > 0 }
}
output "postgres_branches_lookup_page_size" {
  description = "Map of page_size values across all postgres_branches_lookup, keyed the same as var.postgres_branches_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_postgres_branches.postgres_branches_lookup : k => v.page_size if v.page_size != null }
}
output "postgres_branches_lookup_parent" {
  description = "Map of parent values across all postgres_branches_lookup, keyed the same as var.postgres_branches_lookup except keys with no parent are omitted"
  value       = { for k, v in data.databricks_postgres_branches.postgres_branches_lookup : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "postgres_branches_lookup_provider_config" {
  description = "Map of provider_config values across all postgres_branches_lookup, keyed the same as var.postgres_branches_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_postgres_branches.postgres_branches_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}
output "postgres_branches_lookup_show_deleted" {
  description = "Map of show_deleted values across all postgres_branches_lookup, keyed the same as var.postgres_branches_lookup except keys with no show_deleted are omitted"
  value       = { for k, v in data.databricks_postgres_branches.postgres_branches_lookup : k => v.show_deleted if v.show_deleted != null }
}


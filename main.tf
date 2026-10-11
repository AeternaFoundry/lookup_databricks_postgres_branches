data "databricks_postgres_branches" "postgres_branches_lookup" {
  for_each = var.postgres_branches_lookup

  parent          = each.value.parent
  page_size       = each.value.page_size
  provider_config = each.value.provider_config
  show_deleted    = each.value.show_deleted
}


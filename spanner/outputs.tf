# Module outputs
output "spanner_instance_id" {
  description = "The ID of the spanner instance"
  value = module.spanner.instance_id
}

output "spanner_db_id" {
  description = "The ID of the spanner database"
  value = module.spanner.database_id
}
# Spanner module outputs
output "instance_id" {
  description = "The ID of the spanner instance"
  value = google_spanner_instance.main_instance.id
}

output "database_id" {
  description = "The ID of the spanner database"
  value = google_spanner_database.database.id
}
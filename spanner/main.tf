module "spanner" {
  source = "./modules/spanner"
}

module "apis" {
  source = "./modules/apis"

  project_id = var.project_id
}
module "nonprod" {
  source      = "./modules/nonprod"
  environment = var.nonprod_env_name
}

module "prod" {
  source      = "./modules/prod"
  environment = var.prod_env_name
}
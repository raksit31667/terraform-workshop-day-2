module "dynamodb" {
  source = "../dynamodb"

  environment = var.environment
}

module "lambda" {
  source = "../lambda"

  role_name          = "earth-lambda-role"
  policy_name        = "earth-lambda-policy"
  dynamodb_table_arn = module.dynamodb.dynamodb_table_arn
  function_name      = "EarthRequestUnicorn"
  environment        = var.environment
}
variable "role_name" {
  type        = string
  description = "IAM role for Lambda"
}

variable "policy_name" {
  type        = string
  description = "IAM policy to allow DynamoDB access for Lambda"
}

variable "dynamodb_table_arn" {
  type        = string
  description = "DynamoDB resource name"
}

variable "function_name" {
  type        = string
  description = "Lambda function name"
}

variable "environment" {
  type = string
}
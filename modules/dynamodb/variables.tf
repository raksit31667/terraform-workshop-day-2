variable "table_name" {
  type        = string
  description = "DynamoDB table name"
  default     = "EarthRides"
}

variable "foo" {
  type    = string
  default = "bar"
}

variable "environment" {
  type = string
}
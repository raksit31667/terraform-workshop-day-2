resource "aws_dynamodb_table" "dynamodb" {
  hash_key       = "RideId"
  name           = "${var.environment}_${var.table_name}"
  write_capacity = 20
  read_capacity  = 20
  attribute {
    name = "RideId"
    type = "S"
  }

  tags = {
    Name = "Earth"
  }
}
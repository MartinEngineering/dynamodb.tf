resource "aws_dynamodb_table" "dynamodb-table" {
  name         = var.dynamodb_table_name
  billing_mode = var.dynamodb_billing_mode
  hash_key     = var.dynamodb_hash_key
  attribute {
    name = var.dynamodb_hash_key // replace with your hash key
    type = var.dynamodb_key_type // Choose between S (String), N (Number), and B (Binary)
  }
}
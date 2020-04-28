# FUTUREWORK: Potentially look at autoscaling for dynamoDB
# see: https://www.terraform.io/docs/providers/aws/r/appautoscaling_policy.html
#
resource "aws_dynamodb_table" "prekeys" {
  name           = "${var.environment}-brig-prekays"
  billing_mode   = "PROVISIONED"
  read_capacity  = var.prekey_table_read_capacity
  write_capacity = var.prekey_table_write_capacity
  hash_key       = "client"

  attribute {
    name = "client"
    type = "S"
  }
}

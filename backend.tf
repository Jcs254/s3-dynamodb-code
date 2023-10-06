terraform {
  backend "s3" {
    bucket         = "simba-bucket"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock-dynamo"
    encrypt        = true
  }
}

resource "aws_dynamodb_table" "terraform_state_lock" {
  name           = "my-terraform-state-lock-dynamo"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
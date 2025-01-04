terraform {
  backend "s3" {
    bucket = "lockingfilecreation"
    key    = "terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terraform-state-lock-dynamodb"
    encrypt = true

  }
}
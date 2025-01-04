terraform {
  backend "s3" {
    bucket = "startefile-bucket"
    key    = "terraform.tfstate"
    region = "ap-south-1"

  }
}
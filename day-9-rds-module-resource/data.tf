data "aws_subnet" "subnet-1" {
  filter {
    name   = "availability-zone"
    values = ["us-east-1a"] # Replace with the correct AZ
  }
}

data "aws_subnet" "subnet-2" {
  filter {
    name   = "availability-zone"
    values = ["us-east-1b"] # Replace with the correct AZ
  }
}

data "aws_subnet" "subnet-1" {
  filter {
    name   = "tag:Name"
    values = ["subnet-06151e91ca6bc94eb"] # insert value here
  }
}
data "aws_subnet" "subnet-2" {
  filter {
    name   = "tag:Name"
    values = ["subnet-0552864466c287269"] # insert value here
  }
}
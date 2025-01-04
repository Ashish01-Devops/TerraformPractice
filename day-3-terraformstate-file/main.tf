resource "aws_instance" "windows" {
  ami               = "ami-0fd05997b4dff7aac"
  instance_type     = "t2.micro"
  key_name          = "Devops-24"
  availability_zone = "ap-south-1a"
  tags = {
    Name = "windows"
  }

}
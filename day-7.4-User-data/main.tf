resource "aws_instance" "name" {
    key_name = "Devops-24"
    instance_type = "t2.micro"
    ami = "ami-0fd05997b4dff7aac"
    tags = {
      Name = "Userdata"
    }
   user_data = file("test.sh") 
}
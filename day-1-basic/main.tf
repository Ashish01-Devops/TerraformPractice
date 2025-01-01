resource "aws_instance" "name" {
    ami = var.ami_id
    instance_type = var.type
    key_name = "Devops-24"
    availability_zone = "ap-south-1b"
  

}
  
  
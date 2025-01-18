resource "aws_instance" "dev" {
    ami = "ami-05576a079321f21f8"
    key_name = "Devops-24"
    instance_type = "t2.micro"
    
    tags = {
        Name = "test"
    }

}
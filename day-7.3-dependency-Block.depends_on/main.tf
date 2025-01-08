resource "aws_instance" "name" {
    key_name = "Devops-24"
    instance_type = "t2.micro"
    ami = "ami-0fd05997b4dff7aac"
   
}
resource "aws_s3_bucket" "dev" {
    bucket = "ytvhshfbbcsss" 
    depends_on = [ aws_instance.name ] ### bucket dependen on aws_instance after create instace bucket will create
}

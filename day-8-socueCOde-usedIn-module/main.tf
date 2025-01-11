resource "aws_instance" "example" {
  ami           = "ami-05576a079321f21f8"  # Replace with a valid AMI ID for us-east-1
  instance_type = "t2.micro"  # Specify the instance type
  key_name = "Devops-24" 

  tags = {
    Name = "ExampleInstance"
  }
}

resource "aws_key_pair" "name" {
    key_name = "testpublic"
    public_key = file("~/.ssh/id_rsa.pub") #here you need to define public key file path 
  
}
resource "aws_instance" "dev" {
    ami = "ami-05576a079321f21f8"
    instance_type = "t2.micro"
    key_name = aws_key_pair.name.key_name
    tags = {
      Name = "key-tf"
    }
  
}
#Ensure that the file id_rsa.pub exists in the .ssh directory:
# ls -l ~/.ssh/id_rsa.pub
# If the file does not exist, generate an SSH key pair:
# ssh-keygen -t rsa -b 2048 -f ~/.ssh/id_rsa

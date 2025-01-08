resource "aws_instance" "server1" {
  instance_type               = "t2.nano"
  key_name                    = "Devops-24"
  ami                         = "ami-0fd05997b4dff7aac"
  subnet_id                   = aws_subnet.public.id # Reference the actual subnet resource
  vpc_security_group_ids      = [aws_security_group.allow_tls.id]
  availability_zone = "ap-south-1a"  # Choose a valid zone
  associate_public_ip_address = true
  tags = {
    Name = "Public"
  }
}


#private

resource "aws_instance" "server2" {
  instance_type          = "t2.micro"
  key_name               = "Devops-24"
  ami                    = "ami-0fd05997b4dff7aac"
  subnet_id              = aws_subnet.private.id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  
  associate_public_ip_address = false # Private instance
  
  tags = {
    Name = "Private"
  }
}


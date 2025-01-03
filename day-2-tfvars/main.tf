resource "aws_instance" "dev" {
  ami           = var.amiid
  instance_type = var.type
  key_name      = var.key

}
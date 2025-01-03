output "privateip" {
  value     = aws_instance.dev.private_ip
  sensitive = true

}
output "publicip" {
  value = aws_instance.dev.public_ip


}
output "ami_id" {
  value = aws_instance.dev.ami

}
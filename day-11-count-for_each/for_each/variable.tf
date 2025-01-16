variable "ami" {
    type = string
    default = "ami-05576a079321f21f8"
  
}
variable "instance_type" {
    type = string
    default = "t2.micro"
  
}
variable "test" {
    default = ["ec2", "ec3"]
    type = list(string)
  
}
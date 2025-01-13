variable "region" {
  description = "AWS region"
  default     = "us-east-1"
  type        = string

}
variable "vpc-name" {
  description = "vpc name for our jumphost"
  type        = string
  default     = "jumphost-vpc"

}
variable "igw-name" {
  description = "internet gate way name for our jumphost server"
  type        = string
  default     = "jumphost-igw"

}
variable "subnet-name1" {
  description = "subnet name for our jumphost server"
  type        = string
  default     = "jumphost-subnet1"

}
variable "subnet-name2" {
  description = "subnet name for our jumphost server"
  type        = string
  default     = "jumphost-subnet2"

}
variable "rt-name" {
  description = "route tabel name for our jumphost server"
  type        = string
  default     = "jumphost-rt"

}
variable "sg-name" {
  description = "security group name for our jumphost server"
  type        = string
  default     = "jumphost-sg"

}
variable "iam-role" {
  description = "IAM role for the jumphost server"
  type        = string
  default     = "jumphost iam role"

}
variable "ami_id" {
  description = "IAM for ec2 instance"
  default     = "ami-05576a079321f21f8"
  type        = string

}
variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t3.medium"

}
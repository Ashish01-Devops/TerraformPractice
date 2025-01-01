variable "ami_id" {
  description = "The AMI ID to use for the main.tf"
  type        = string
  default     = "ami-0fd05997b4dff7aac"
}

variable "type" {
    type = string
    default = "t2.nano"
}
variable "key_name" {
type = string
default = "ami-0fd05997b4dff7aac" 
}

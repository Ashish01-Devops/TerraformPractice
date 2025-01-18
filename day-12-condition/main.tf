provider "aws" {
  profile = "ashish"
  region  = "us-east-1"

}
resource "aws_s3_bucket" "dev" {
  bucket = "abcksdksds"

}
variable "aws_region" {
  description = "value"
  type        = string
  nullable    = false
  default     = "us-east-1" #here we need to define either us-east-1 or eu-east-2 if i give other region will get error 
  validation {
    condition = var.aws_region == "us-east-2" || var.aws_region == "us-east-1"
    error_message = "The variable 'aws_region' must be one of the following regions: us-east-2, us-east-1"
    
  }

}
#after run this will get error like The variable 'aws_region' must be one of the following regions: us-west-2,│ eu-west-1, so it will allow any one region defined above in conditin block
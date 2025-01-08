resource "aws_instance" "name" {
    key_name = "Devops-24"
    instance_type = "t2.micro"
    ami = "ami-0fd05997b4dff7aac"
   
}
resource "aws_s3_bucket" "dependent" {
    bucket = "ytvhshfbbc" 
}

#terraform apply -target=aws_s3_bucket.dependent 
#terraform destroy -target=aws_s3_bucket.dependent
#terraform apply -target=aws_s3_bucket.dependent -target=aws_s3_bucket.dependent #by calling multiple resources 
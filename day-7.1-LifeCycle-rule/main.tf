resource "aws_instance" "Dev" {
    ami = "ami-0fd05997b4dff7aac"
    instance_type = "t2.micro"
    key_name = "Devops-24"
    availability_zone = "ap-south-1a"
    tags = {
      Name = "Test6"
    }
    lifecycle {
      create_before_destroy = true
    }
}



# lifecycle {
    #   create_before_destroy = true #create first then delete
    # }
    # lifecycle {
    #   ignore_changes = [ tags, ]
    # }
    # lifecycle {
    #   prevent_destroy = true
#     }

#replace_triigred_by used following combination
# lifecycle {
   # create_before_destroy = true
    #ignore_changes = [
   #   ami
 #   ]
 # }
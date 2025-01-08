resource "aws_instance" "name" {

    #firt execute terraform import aws_instance.name i-084a21c5324c4e1b1 then after added one copy and paste through state file
    ami = "ami-07d9cf938edb0739b"
    instance_type = "t2.nano"  #inistally t2.micro after that we have check it wokring or not wia import
    key_name = "oregon"
    tags = {
      Name = "name"
    }

}
#import --> terraform import aws_instance .name <instance_id>
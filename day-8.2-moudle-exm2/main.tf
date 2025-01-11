module "dev" {
    source = "github.com/CloudTechDevOps/terraform0730am/day-8-module-ex2"
    key_name = "Devops-24"
    instance_type = "t2.micro"
    ami_id = "ami-05576a079321f21f8"
  
}
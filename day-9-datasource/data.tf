data "provider_resource" "logical_name" {
  # arguments
}
provider_resource: The resource type (e.g., aws_subnet, aws_ami).
logical_name: A unique identifier for the data source within your Terraform configuration.





# Find an Existing AWS Subnet
data "aws_subnet" "example" {
  filter {
    name   = "tag:Name"
    values = ["my-subnet"]
  }
}

resource "aws_instance" "example" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"
  subnet_id     = data.aws_subnet.example.id
}

# Fetch an AWS AMI
data "aws_ami" "example" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"]
}

resource "aws_instance" "example" {
  ami           = data.aws_ami.example.id
  instance_type = "t2.micro"
}
# Fetch IAM Role Information

data "aws_iam_role" "example" {
  name = "my-existing-role"
}

resource "aws_iam_role_policy_attachment" "example" {
  role       = data.aws_iam_role.example.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}

# Fetch S3 Bucket Details
data "aws_s3_bucket" "example" {
  bucket = "my-existing-bucket"
}

output "bucket_arn" {
  value = data.aws_s3_bucket.example.arn
}

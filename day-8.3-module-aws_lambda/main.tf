provider "aws" {
  region = var.aws_region
}

# Use AWS Lambda module
module "lambda_function" {
  source  = "terraform-aws-modules/lambda/aws"
  version = "~> 5.0"

  function_name = var.function_name
  handler       = "lambda_function.handler"
  runtime       = "python3.9"

  source_path = "${path.module}/lambda_function"

  tags = {
    Environment = "Development"
    Project     = "LambdaExample"
  }
}

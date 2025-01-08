# S3 Bucket to Store Lambda Code
resource "aws_s3_bucket" "lambda_bucket" {
  bucket        = "my-lambda-bucket-unique-name-ashishqw"
  force_destroy = true

  tags = {
    Name = "LambdaBucket"
  }
}

# Upload Lambda Code to S3
resource "aws_s3_object" "lambda_code" {
  bucket = aws_s3_bucket.lambda_bucket.id
  key    = "lambda_function.zip"
  source = "/c/TerrafromDevops/TerraformPractice/day-7-Lambda/lambda_function.zip"  # Ensure this path is correct to the zip file
}

# IAM Role for Lambda
resource "aws_iam_role" "lambda_exec_role" {
  name = "lambda-exec-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      }
    ]
  })
}

# Attach Policy to IAM Role
resource "aws_iam_role_policy_attachment" "lambda_basic_execution" {
  role       = aws_iam_role.lambda_exec_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

# Lambda Function
resource "aws_lambda_function" "my_lambda" {
  function_name = "my_lambda_function"
  runtime       = "python3.9"
  role          = aws_iam_role.lambda_exec_role.arn
  handler       = "lambda_function.lambda_handler"  # Update with actual function handler
  s3_bucket     = aws_s3_bucket.lambda_bucket.id   # Get code from the S3 bucket
  s3_key        = aws_s3_object.lambda_code.key    # Path to the zip file in S3
  timeout       = 100
  memory_size   = 128

  environment {
    variables = {
      ENV_VAR_KEY = "ENV_VAR_VALUE"  # Replace with actual environment variables
    }
  }

  tags = {
    Name = "MyLambdaFunction1"
  }
}

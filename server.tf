# AWS Credentials
provider "aws" {
  access_key = ""
  secret_key = ""
  region     = ""
}

# EC2 Instance
resource "aws_instance" "web" {
  # ...
}

# AWS Credentials
variable "access_key" {}
variable "secret_key" {}
variable "region" {
  default = "eu-west-1"
}

provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

# EC2 Instance
variable "ami" {}
variable "subnet_id" {}
variable "identity" {}
variable "vpc_security_group_id" {}

resource "aws_instance" "web" {
  ami           = "${var.ami}"
  instance_type = "t2.micro"
  
  subnet_id              = "${var.subnet_id}"
  vpc_security_group_ids = ["${var.vpc_security_group_id}"]
  
  tags {
    "Identity"    = "${var.identity}"
    "Name"        = "Student"
    "Environment" = "Training"
    "Vpc"         = "tf-101"
  }
}

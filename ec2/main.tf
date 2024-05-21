terraform {
  required_providers {
      aws = {
      source = "hashicorp/aws"
      version = "5.50.0"
    }
  }
}


provider "aws" {
  region     = "us-east-1"
  access_key = "<add_access_key>"
  secret_key = "<add_secret_key>"
}


resource "aws_instance" "my_ec2" {
  ami           = "ami-0bb84b8ffd87024d8"
  instance_type = "t2.micro"

   tags = {
    Name = "First_ec2"
  }
}
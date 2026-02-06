terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}



resource "aws_instance" "tf-instance" {
  ami           = "ami-0c94855ba95c71c99"  
  instance_type = "t3.micro"
  key_name = "my-key-name"
  tags = {
    Name = "instance name"
  }
}

import {
  to   = aws_instance.tf-instance
  id   = "i-0123456789abcdef0"  # Replace with your actual instance ID
}
variable "region" {
    default = "us-east-1"
  
}

variable "vpc-cidr-block" {
    default = "10.0.0.0/16"
    description = "This is our vpc cidr block"
  
}

variable "environment" {
    description = "Enter your value"
  
}

variable "public-subnet-cidr" {
    default = "10.0.1.0/24"
    description = "This is our public subnet cidr block"
  
}

variable "private-subnet-cidr" {
    default = "10.0.2.0/24"
    description = "This is our private subnet cidr block"
}
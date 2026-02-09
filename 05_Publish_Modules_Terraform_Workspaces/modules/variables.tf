variable "instance_type" {
    description = "Type of EC2 instance to create"
    type        = string
    default     = "t3.micro"
  
}


variable "key-name" {
    type        = string
    description = "Use your own key pair name here"
      
}

variable "tag" {
    type = string
    default = "docker-instance"
    description = "Use  tags"

}

variable "docker-instance-ports" {
    type = list(number)
    default = [80, 22, 8080]
    description = "List of ports to open for the Docker instance"
}

variable "server-name" {
    type = string
    default = "docker-instance"
    description = "Name of the Docker server instance"
  
}

variable "num-of-instances" {
    type = number
    default = 1
    description = "Number of Docker instances to create"
  
}
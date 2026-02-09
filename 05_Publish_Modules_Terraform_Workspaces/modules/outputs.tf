output "instance-public-ips" {
    value = aws_instance.tfmyec2[*].public_ip
    description = "Public IP addresses of the created EC2 instances"
  
}

output "security-group-id" {
    value = aws_security_group.tf-sec-gr.id
    description = "ID of the created security group"
  
}

output "instance-ids" {
    value = aws_instance.tfmyec2[*].id
    description = "IDs of the created EC2 instances"
  
}
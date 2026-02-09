
data "aws_ami" "amazon-linux-2023" {
    owners = ["amazon"]
    most_recent = true
    filter {
        name   = "name"
        values = ["al2023-ami-*-x86_64"]
    }
}

resource "aws_security_group" "tf-sec-gr" {
    name = "${var.tag}-terraform-sec-gr"
    tags = {
      Name = var.tag
    }
  


dynamic "ingress" {
    for_each = var.docker-instance-ports
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
}
    egress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]

}
}
resource "aws_instance" "tfmyec2" {
    instance_type = var.instance_type
    ami           = data.aws_ami.amazon-linux-2023.id
    key_name = var.key-name
    vpc_security_group_ids = [ aws_security_group.tf-sec-gr.id ]
    tags = {
      Name = var.tag
    }
    user_data = templatefile("${abspath(path.module)}/userdata.sh", {myserver = var.server-name})
    count = var.num-of-instances
}



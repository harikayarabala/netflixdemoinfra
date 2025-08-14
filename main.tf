provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-0e1989e836322f58b"
instance_type = "t2.medium"
key_name = "project.2"
vpc_security_group_ids = ["sg-06f6de6a018b93060"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "AppServer-1", "AppServer-2", "Monitoring server"]
}

data "aws_vpc" "selected" {
  id = var.vpc_id
}

# Create EC2 instance
resource "aws_instance" "my-ec2"{
    ami=var.ami
    instance_type=var.instance_type
    tags={
      Name=var.tag_name
    }
    subnet_id=var.subnet_id
    vpc_security_group_ids =[aws_security_group.security-group.id]
}
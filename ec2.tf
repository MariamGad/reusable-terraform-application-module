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

resource "aws_security_group" "security-group"{
    name = var.sg_name
    vpc_id= data.aws_vpc.selected.id
    ingress {
    description      = "HTTP from EC2"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks=["0.0.0.0/0"]
    }
    
    ingress {
    description      = "HTTPS from EC2"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks=["0.0.0.0/0"]
    }
}
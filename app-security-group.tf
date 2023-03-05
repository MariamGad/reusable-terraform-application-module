# allow HTTP and HTTPS traffic to EC2 instance
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
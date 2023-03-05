# Create EC2 instance
resource "aws_instance" "my-ec2"{
    ami=var.ami
    instance_type=var.instance_type
    tags={
      Name=var.tag_name
    }
    subnet_id=var.subnet_id
}
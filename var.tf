variable vpc_id{
    description="To get vpc id"
}

variable instance_type {
    type = string
    description="instance class type"
}
variable ami {
    type = string
    description="image for ec2 instance"
}
variable tag_name {
    type = string
    description="name for ec2 instance"
}
variable subnet_id {
    type = string
    description="to get public subnet id from network module"
}

variable sg_name{
    type = string
    description="secuirty group name"
}

resource "aws_instance" "ec2" {
    count                   = var.instance_count
    ami                     = var.ami_id
    instance_type           = var.instance_type
    subnet_id               = var.subnet_id
    vpc_security_group_ids  = var.security_group_ids

    tags = {
        Name = "${var.instance_name_prefix} - ${count.index + 1}"
    }
}
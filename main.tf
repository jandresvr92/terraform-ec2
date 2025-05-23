provider "aws" {
  region = var.aws_region
}

module "ec2" {
  source              = "./modules/ec2_instance"
  ami_id              = var.ami_id
  instance_type       = var.instance_type
  subnet_id           = var.subnet_id
  security_group_ids  = var.security_group_ids
  instance_count      = var.instance_count
  instance_name_prefix = var.instance_name_prefix
}

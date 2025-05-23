variable "ami_id" {
  description = "The ID of the AMI to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 instance to launch"
  type        = string
  default     = "t3a.small"
}   

variable "subnet_id" {
  description = "The ID of the subnet where the EC2 instance will be deployed"
  type        = string
}

variable "security_group_ids" {
  description = "A list of security group IDs to associate with the EC2 instance"
  type        = list(string)
}

variable "instance_count" {
  description = "The number of EC2 instances to create"
  type        = number
  default     = 1
}

variable "instance_name_prefix" {
  description = "Prefix to use for naming the EC2 instances"
  type        = string
  default     = "nodo-ec2"
}

variable "tags" {
  description = "A map of tags to assign to the EC2 instances"
  type        = map(string)
  default     = {}
}
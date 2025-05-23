variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "ID of the secure and updated AMI"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "t3.micro"
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}

variable "security_group_ids" {
  description = "Security Groups to apply"
  type        = list(string)
}

variable "instance_count" {
  description = "Number of instances"
  type        = number
  default     = 2
}

variable "instance_name_prefix" {
  description = "Name prefix"
  type        = string
  default     = "secure-ec2"
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
  default     = {}
}

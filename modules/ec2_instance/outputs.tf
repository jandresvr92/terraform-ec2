output "instance_ids" {
  description = "IDs of the EC2 instances"
  value       = [for i in aws_instance.ec2 : i.id]
}

output "public_ips" {
  description = "Public IPs of the EC2 instances"
  value       = [for i in aws_instance.ec2 : i.public_ip]
}

output "private_ips" {
  description = "Private IPs of the EC2 instances"
  value       = [for i in aws_instance.ec2 : i.private_ip]
}
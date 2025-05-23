output "instance_ids" {
  description = "List of IDs for the created EC2 instances from aws_instance.this"
  value       = [for i in aws_instance.this : i.id]
}

output "public_ips" {
  description = "List of public IP addresses for the created EC2 instances from aws_instance.this"
  value       = [for i in aws_instance.this : i.public_ip]
}

output "private_ips" {
  description = "List of private IP addresses for the created EC2 instances from aws_instance.this"
  value       = [for i in aws_instance.this : i.private_ip]
}

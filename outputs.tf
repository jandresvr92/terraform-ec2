output "instance_ids" {
  description = "IDs de las instancias EC2 creadas"
  value       = module.ec2.instance_ids
}

output "public_ips" {
  description = "IPs públicas de las instancias EC2"
  value       = module.ec2.public_ips
}

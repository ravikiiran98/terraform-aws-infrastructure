output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "Public subnet ID"
  value       = aws_subnet.public.id
}

output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.web.id
}

output "instance_private_ip" {
  description = "EC2 private IP"
  value       = aws_instance.web.private_ip
}

output "instance_public_ip" {
  description = "EC2 public IP"
  value       = aws_instance.web.public_ip
}


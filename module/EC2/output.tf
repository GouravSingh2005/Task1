output "ec2_instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.myec2.id
}

output "ec2_private_ip" {
  description = "Private IP of EC2"
  value       = aws_instance.myec2.private_ip
}

output "ec2_public_ip" {
  description = "Public IP of EC2"
  value       = aws_instance.myec2.public_ip
}

output "ec2_security_group_id" {
  description = "Security Group ID of EC2"
  value       = aws_security_group.ec2_sg.id
}
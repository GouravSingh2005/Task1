output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "List of public subnet IDs"
  value       = module.vpc.public_subnet_ids
}

output "private_app_subnet_ids" {
  description = "List of private app subnet IDs"
  value       = module.vpc.private_app_subnet_ids
}

output "private_db_subnet_ids" {
  description = "List of private DB subnet IDs"
  value       = module.vpc.private_db_subnet_ids
}

output "internet_gateway_id" {
  description = "Internet Gateway ID"
  value       = module.vpc.internet_gateway_id
}

output "nat_gateway_id" {
  description = "NAT Gateway ID"
  value       = module.vpc.nat_gateway_id
}
output "ec2_instance_id" {
  description = "ID of the EC2 instance"
  value       = module.main-EC2.ec2_instance_id
}

output "ec2_private_ip" {
  description = "Private IP of EC2"
  value       = module.main-EC2.ec2_private_ip
}

output "ec2_public_ip" {
  description = "Public IP of EC2"
  value       = module.main-EC2.ec2_public_ip
}

output "ec2_security_group_id" {
  description = "Security Group ID of EC2"
  value       = module.main-EC2.ec2_security_group_id
}
output "rds_instance_id" {
  description = "RDS Instance ID"
  value       = module.rds.rds_instance_id
}

output "rds_endpoint" {
  description = "RDS Endpoint"
  value       = module.rds.rds_endpoint
}

output "rds_port" {
  description = "RDS Port"
  value       = module.rds.rds_port
}

output "rds_security_group_id" {
  description = "RDS Security Group ID"
  value       = module.rds.rds_security_group_id
}

output "db_subnet_group" {
  description = "DB Subnet Group Name"
  value       = module.rds.db_subnet_group
}
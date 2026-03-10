# VPC Variables
variable "aws_vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
}

variable "aws_vpc_public_subnet_cidr_1" {
  description = "CIDR block for public subnet in AZ 1"
  type        = string
}

variable "aws_vpc_private_subnet_cidr_1" {
  description = "CIDR block for private subnet in AZ 1"
  type        = string
}

variable "aws_vpc_private_db_subnet_cidr_1" {
  description = "CIDR block for private DB subnet in AZ 1"
  type        = string
}

variable "aws_vpc_public_subnet_cidr_2" {
  description = "CIDR block for public subnet in AZ 2"
  type        = string
}

variable "aws_vpc_private_subnet_cidr_2" {
  description = "CIDR block for private subnet in AZ 2"
  type        = string
}

variable "aws_vpc_private_db_subnet_cidr_2" {
  description = "CIDR block for private DB subnet in AZ 2"
  type        = string
}

variable "aws_vpc_public_subnet_cidr_3" {
  description = "CIDR block for public subnet in AZ 3"
  type        = string
}

variable "aws_vpc_private_subnet_cidr_3" {
  description = "CIDR block for private subnet in AZ 3"
  type        = string
}

variable "aws_vpc_private_db_subnet_cidr_3" {
  description = "CIDR block for private DB subnet in AZ 3"
  type        = string
}
variable "var_ami_id" {
  description = "Valur of ami id"
  type = string
}
variable "var_instance_type" {
  description = "Instance type of EC2"
  type = string
}

variable "vpc_id" {
  description = "VPC id where EC2 security group will be created"
  type        = string
}

variable "db_username" {
  type = string
}

variable "db_password" {
  type = string
}
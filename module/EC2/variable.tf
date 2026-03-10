variable "var_ami_id" {
  description = "Valur of ami id"
  type = string
}
variable "var_instance_type" {
  description = "Instance type of EC2"
  type = string
}

variable "private_app_subnet_ids" {
  type = list(string)
}

variable "vpc_id" {
  description = "VPC id where EC2 security group will be created"
  type        = string
}
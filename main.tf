module "vpc" {
  source = "./module/vpc"

  aws_vpc_cidr_block              = var.aws_vpc_cidr_block
  aws_vpc_public_subnet_cidr_1    = var.aws_vpc_public_subnet_cidr_1
  aws_vpc_private_subnet_cidr_1   = var.aws_vpc_private_subnet_cidr_1
  aws_vpc_private_db_subnet_cidr_1 = var.aws_vpc_private_db_subnet_cidr_1
  aws_vpc_public_subnet_cidr_2    = var.aws_vpc_public_subnet_cidr_2
  aws_vpc_private_subnet_cidr_2   = var.aws_vpc_private_subnet_cidr_2
  aws_vpc_private_db_subnet_cidr_2 = var.aws_vpc_private_db_subnet_cidr_2
  aws_vpc_public_subnet_cidr_3    = var.aws_vpc_public_subnet_cidr_3
  aws_vpc_private_subnet_cidr_3   = var.aws_vpc_private_subnet_cidr_3
  aws_vpc_private_db_subnet_cidr_3 = var.aws_vpc_private_db_subnet_cidr_3
}
module "main-EC2" {
  source = "./module/EC2"

  var_ami_id        = var.var_ami_id
  var_instance_type = var.var_instance_type
  private_app_subnet_ids = module.vpc.private_app_subnet_ids
  vpc_id                 = module.vpc.vpc_id
}
module "rds" {

  source = "./module/RDS"

  vpc_id = module.vpc.vpc_id

  private_db_subnet_ids = module.vpc.private_db_subnet_ids

  db_username = var.db_username
  db_password = var.db_password
}
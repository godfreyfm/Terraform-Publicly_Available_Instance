module "my_vpc" {
  source                  = "./modules/vpc_resources"
  vpc_cidr                = var.vpc_cidr
  subnet_cidr             = var.subnet_cidr
  subnet_availabilty_zone = var.subnet_availabilty_zone
  vpc_name                = var.vpc_name
  subnet_name             = var.subnet_name
  global_tags             = var.global_tags
  igw_name                = var.igw_name
  route_table_name        = var.route_table_name
  pub_address             = var.pub_address
  aws_security_group_name = var.aws_security_group_name
  map_public_ip_on_launch = var.map_public_ip_on_launch
}

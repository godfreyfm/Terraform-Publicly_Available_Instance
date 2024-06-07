# Variables needed for provider connection /////////////////////////////////////////////////
profile  = "sbox-user" #  Make sure profile hass required previleges to deploy necessary resources 
role_arn = "arn:aws:iam::992382843857:role/sbox-assume-role"
region   = "us-east-1"


# VPC Block and Subnet specific Variables /////////////////////////////////////////////////
map_public_ip_on_launch = true # Enables instances created in this region to have public IP address
vpc_cidr                = "10.0.0.0/16"
subnet_cidr             = "10.0.0.0/24"
subnet_availabilty_zone = "us-east-1a"

#  Variables needed for tagging. Feel free to use variables that make sense for your use case /////////////////////////////////////////////////
global_tags = {
  "Env"         = "prod"
  "portfolio"   = "Digital Accelerator"
  "Cost_Center" = "XX-1"
}
vpc_name                = "main"
subnet_name             = "pub-sn"
igw_name                = "main_igw"
route_table_name        = "pub_rt"
aws_security_group_name = "pub_sec_group"
instance_name           = "public_instance"

# Connectivity variables ///////////////////////////////////////////////// 
pub_address = "0.0.0.0/0"

# EC2 Specific Variables ///////////////////////////////////////////////// 
instance_type = "t2.micro"
key_name      = "app_keys" # I used a key created in the aws console for this deployment 


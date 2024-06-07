variable "vpc_cidr" {
  description = "vpc_cidr"
  type = string
}

variable "subnet_cidr" {
  description = "cidr for the subnet"
  type = string
}

variable "subnet_availabilty_zone" {
 description = "availability zone used for the subnet"
 type = string
}

variable "pub_address" {
  description = "public address"
  type = string
}

variable "map_public_ip_on_launch" {
  description = "option to enable instances within to have pub ip or no"
  type = bool
  
}

#  Variables needed for tagging /////////////////////////////////////////////////

variable "route_table_name" {
  description = "public route table"
  type = string
}

variable "aws_security_group_name" {
  description = "security group for the security group"
  type = string
}

variable "global_tags" {
  description = "vpc tagging"
  type = map(string)
}
variable "vpc_name" {
  description = "vpc name"
  type = string
}

variable "subnet_name" {
  description = "vpc name"
  type = string
}

variable "igw_name" {
  description = "internet gateway name"
  type = string
}


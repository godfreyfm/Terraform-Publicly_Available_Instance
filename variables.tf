# Variables needed for provider connection /////////////////////////////////////////////////
variable "profile" {
  description = "profile for aws"
  type        = string
}

variable "role_arn" {
  description = "role assumed by profile user"
  type        = string
}

variable "region" {
  description = "main region used"
  type        = string
}

# VPC Block and Subnet specific Variables /////////////////////////////////////////////////

variable "map_public_ip_on_launch" {
  description = "option to enable instances within to have pub ip or no"
  type        = bool
}

variable "vpc_cidr" {
  description = "default vpc cidr if none is specified"
  type        = string
}

variable "subnet_cidr" {
  description = "default subnet cidr if none is specified"
  type        = string
}

variable "subnet_availabilty_zone" {
  description = "availability zone used for the subnet"
  type        = string
}


#  Variables needed for tagging /////////////////////////////////////////////////

variable "global_tags" {
  description = "vpc tagging"
  type        = map(string)

}

variable "vpc_name" {
  description = "vpc name"
  type        = string
}

variable "subnet_name" {
  description = "vpc name"
  type        = string
}

variable "igw_name" {
  description = "internet gateway name"
  type        = string
}

variable "route_table_name" {
  description = "public route table"
  type        = string
}

variable "aws_security_group_name" {
  description = "security group for the security group"
  type        = string
}

variable "instance_name" {
  description = "Instance name"
  type        = string
}

# Connectivity variables ///////////////////////////////////////////////// 

variable "pub_address" {
  description = "public address"
  type        = string
}


# EC2 Specific Variables ///////////////////////////////////////////////// 

variable "instance_type" {
  description = "instance type"
  type        = string
}

variable "key_name" {
  description = "instance type"
  type        = string
}




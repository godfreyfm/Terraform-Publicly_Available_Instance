variable "subnet_id" {
  description = "value for subnet id"
  type = string
}

variable "pub_security_group_id" {
 description = "security group id"
 type = string 
}

variable "instance_type" {
  description = "instance type"
  type = string
}

variable "key_name" {
  description = "instance type"
  type = string
}

#  Variables needed for tagging /////////////////////////////////////////////////
variable "global_tags" {
  description = "vpc tagging"
  type = map(string)
}

variable "instance_name" {
  description = "Instance name"
  type = string
}

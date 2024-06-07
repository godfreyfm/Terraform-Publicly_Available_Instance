output "vpc_id" {
  description = "Output the vpc id"
  value       = module.my_vpc.vpc_id
}

output "subnet_id" {
  description = "the subnet id the propagates frome the vpc_resources module"
  value = module.my_vpc.subnet_id
}

output "pub_security_group_id" {
  description = "Security group id"
  value = module.my_vpc.pub_security_group_id
}
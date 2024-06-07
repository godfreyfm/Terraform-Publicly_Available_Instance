output "vpc_id" {
  description = "outputs the vpc id"
  value = aws_vpc.dev.id
}

output "subnet_id" {
  description = "the subnet id"
  value = aws_subnet.pub.id
}

output "pub_security_group_id" {
  description = "security group id"
  value = aws_security_group.allow_80_443_22_traffic.id
}
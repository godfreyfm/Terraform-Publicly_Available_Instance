# Declaration for VPC  ///////////////////////////////////////////////// 

resource "aws_vpc" "dev" {
  cidr_block = var.vpc_cidr
  tags = merge(var.global_tags,{
    Name = var.vpc_name
  })
}

# Declaration for public subnet  ///////////////////////////////////////////////// 
resource "aws_subnet" "pub" {
  vpc_id = aws_vpc.dev.id
  cidr_block = var.subnet_cidr
  availability_zone = var.subnet_availabilty_zone
  map_public_ip_on_launch = var.map_public_ip_on_launch
  tags = merge(var.global_tags, {
    Name = var.subnet_name
  })
}

# Declaration for Internet Gateway  ///////////////////////////////////////////////// 
resource "aws_internet_gateway" "main_igw" {
  vpc_id = aws_vpc.dev.id
  tags = merge(var.global_tags,{
    Name = var.igw_name
  })
}

# Declaration for Route Table and association  ///////////////////////////////////////////////// 
resource "aws_route_table" "pub_rt" {
  vpc_id = aws_vpc.dev.id
  route {
    cidr_block = var.pub_address
    gateway_id = aws_internet_gateway.main_igw.id
  }

  tags = merge(var.global_tags,{
    Name = var.route_table_name
  })
}

resource "aws_route_table_association" "pub_rt_assoc" {
  subnet_id = aws_subnet.pub.id
  route_table_id = aws_route_table.pub_rt.id
}


# Declaration for Security group and its rules  ///////////////////////////////////////////////// 
resource "aws_security_group" "allow_80_443_22_traffic" {
  vpc_id = aws_vpc.dev.id

  tags = merge(var.global_tags,{
    Name = var.aws_security_group_name
  })
}

resource "aws_vpc_security_group_ingress_rule" "port_80" {
  description = "Allows all incoming traffic on port 80"
  security_group_id = aws_security_group.allow_80_443_22_traffic.id
  cidr_ipv4         = var.pub_address
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_ingress_rule" "port_443" {
  description = "Allows all incoming traffic on port 443"
  security_group_id = aws_security_group.allow_80_443_22_traffic.id
  cidr_ipv4         = var.pub_address
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  description = "Allows all outgoing traffic"
  security_group_id = aws_security_group.allow_80_443_22_traffic.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" 
}

resource "aws_vpc_security_group_ingress_rule" "port_22" {
  description = "Allows all incoming traffic on port 22"
  security_group_id = aws_security_group.allow_80_443_22_traffic.id
  cidr_ipv4         = var.pub_address
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}
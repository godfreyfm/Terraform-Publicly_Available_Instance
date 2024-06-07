module "my_ec2_instances" {
  source                = "./modules/ec2_instance"
  instance_name         = var.instance_name
  instance_type         = var.instance_type
  key_name              = var.key_name
  subnet_id             = module.my_vpc.subnet_id
  pub_security_group_id = module.my_vpc.pub_security_group_id
  global_tags           = var.global_tags
}

# !Important - The modules called above are from the vpc_resources module that were outputted.Without being that the boutputs were done, it would be impossible to catch these for this code-block
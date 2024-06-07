resource "aws_instance" "pub_instance" {
  ami = data.aws_ami.latest_ubuntu.id
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  key_name = var.key_name
  vpc_security_group_ids = [var.pub_security_group_id]

  tags = merge(var.global_tags,{
    Name = var.instance_name
  })
}
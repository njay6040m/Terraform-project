resource "aws_instance" "ec2" {
  for_each = var.ami_id
  ami = each.value
  instance_type = var.instance_type[each.key]
  tags = {
    Name = var.ec2_tags[each.key]
  }
}
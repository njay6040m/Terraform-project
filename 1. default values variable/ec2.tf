resource "aws_instance" "DO-ec2" {
    ami = var.ami_id
    instance_type = var.instance_type
  
  tags = {
    "Name" = "DO-ec2"
  }
}
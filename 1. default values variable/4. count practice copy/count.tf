resource "aws_instance" "non-var-count" {
    count = length(var.ami_id)
 ami = var.ami_id[count.index]
 instance_type = var.instance_type[count.index]
 tags = {
    Name = var.ec2_tags[count.index]
 }
  
}
















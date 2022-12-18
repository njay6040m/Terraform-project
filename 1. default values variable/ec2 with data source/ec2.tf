resource "aws_instance" "ec2" {
 ami = data.aws_instance.ami-id.id
 instance_type = "t2.micro"
  
}
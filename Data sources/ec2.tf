resource "aws_instance" "data-source" {
    ami = data.aws_ami.ec2-ami-id.id
    instance_type = "t2.micro"

    tags = {
      "Name" = "data-source-ec2"
    }
  
}



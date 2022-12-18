data "aws_ami" "ec2-ami-id" {
    most_recent = true
    owners = ["137112412989"]
 filter {
    name = "name"
    values = ["amzn2-ami-hvn*"]
 }
  
}

output "ami" {
    value = data.aws_ami.ec2-ami-id
  
}
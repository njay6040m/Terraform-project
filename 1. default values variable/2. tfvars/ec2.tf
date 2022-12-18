resource "aws_instance" "DO2-ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    "Name" = var.tags
  }
}

# run terraform plan --var-file=variables/variables.tfvars
# repeat the above line for Terraform apply
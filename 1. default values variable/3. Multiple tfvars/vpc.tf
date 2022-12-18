resource "aws_vpc" "DO-vpc" {
    cidr_block = var.cidr_block

    tags = {
        Name = var.tags-vpc
  
}
}
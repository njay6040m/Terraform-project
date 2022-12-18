resource "aws_internet_gateway" "DO-igw" {
    vpc_id = aws_vpc.DO-vpc.id
    tags = {
      "Name" = var.tags-igw
          }
  
}
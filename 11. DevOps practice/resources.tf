resource "aws_vpc" "tf-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = { "Name" = "tf-vpc-tag"
  }

}


resource "aws_internet_gateway" "igw-tf" {
  vpc_id = aws_vpc.tf-vpc.id
  tags = {
    "Name" = "tf-IGW"
  }

}


# resource "aws_subnet" "tf-subnetP1" {
#   vpc_id            = aws_vpc.tf-vpc.id
#   cidr_block        = "10.0.5.0/24"
#   availability_zone = "us-east-1a"
#   tags = {
#     Name = "tf-subnet-public1"
#   }
# }

# resource "aws_subnet" "tf-subnetPv2" {
#   vpc_id            = aws_vpc.tf-vpc.id
#   cidr_block        = "10.0.1.0/24"
#   availability_zone = "us-east-1b"
#   tags = {
#     "Name" = "tf-subnet-private1"
#   }

# }

# resource "aws_subnet" "tf-subnetP3" {
#   vpc_id            = aws_vpc.tf-vpc.id
#   cidr_block        = "10.0.2.0/24"
#   availability_zone = "us-east-1a"
#   tags = {
#     "Name" = "tf-subnet-public2"
#   }
# }

# resource "aws_subnet" "tf-subnetPv4" {
#   vpc_id            = aws_vpc.tf-vpc.id
#   cidr_block        = "10.0.3.0/24"
#   availability_zone = "us-east-1b"
#   tags = {
#     "Name" = "tf-subnet-private2"
#   }

# }

# resource "aws_route_table" "tf-Main-RT" {
#   vpc_id = aws_vpc.tf-vpc.id
#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.igw-tf.id
#   }

#   tags = {
#     "Name" = "tf-Main-RT"
#   }

# }

# resource "aws_route_table_association" "a" {
#   subnet_id      = aws_subnet.tf-subnetP1.id
#   route_table_id = aws_route_table.tf-Main-RT.id

# }


# resource "aws_route_table_association" "b" {
#   subnet_id      = aws_subnet.tf-subnetP3.id
#   route_table_id = aws_route_table.tf-Main-RT.id

# }
provider "aws" {
  region = "us-east-1"
  profile = "default"
  
}

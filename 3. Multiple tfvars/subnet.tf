
resource "aws_subnet" "DO-PUSN" {
  vpc_id            = data.aws_vpc.DO-vpc-id.id
  availability_zone = "us-east-1a"
  cidr_block        = var.subnet_cidr
}
data "aws_instance" "ami-id" {
  most_recent      = true
  owners          = [137112412989]

  filter {
    name   = "name"
    values = ["al2022-ami-2022.0.20220728.1-kernel-5.15-arm64"]
  }
}
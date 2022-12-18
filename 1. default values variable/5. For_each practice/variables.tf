variable "ami_id" {
  default = {
    0 = "ami-08e637cea2f053dfa"
    1 = "ami-0574da719dca65348"
    2 = "ami-0b0dcb5067f052a63"
    # mapping
  }
}

variable "instance_type" {
  default = ["t2.micro", "t2.nano", "t3.micro"]
#   set of strings
}

variable "ec2_tags" {
  default = ["ec2-1", "ec2-2", "ec2-3"]
#   set of strings
}

variable "region" {
  default = "us-east-1"
}

variable "profile" {
  default = "default"
}
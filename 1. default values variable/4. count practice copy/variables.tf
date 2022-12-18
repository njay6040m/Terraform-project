#sets of strings or mapping can be used for the variables below
#If the 2nd ec2 instance gets taken out, the 3rd one adopts the index of "1"
variable "ami_id" {
  default = {
    0 = "ami-08e637cea2f053dfa"
    1 = "ami-0574da719dca65348"
    2 = "ami-0b0dcb5067f052a63"
  }
}

variable "instance_type" {
    default = {
        0 = "t2.micro"
        1 = "t2.nano"
        2 = "t3.micro"      
    }
}

variable "ec2_tags" {
    # Set of strings
    default = ["ec2-1", "ec2-2", "ec3-3"] 
  
}

variable "region" {
    default = "us-east-1"
}
variable "profile" {
    default = "default"
  
}
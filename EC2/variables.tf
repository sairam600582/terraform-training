variable "subnet_id" {}

variable "security_group_id" {}

variable "key_name" {}

variable "availability_zone" {
  default = "ap-south-1a"
}

variable "ami" {
  default = "ami-0f918f7e67a3323f0"
}

variable "instance" {
  default = "t2.micro"
}

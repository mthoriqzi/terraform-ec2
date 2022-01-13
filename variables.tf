# README FIRST

variable "region" {
  type    = string
  default = "ap-southeast-1"
}


variable "vpc_id" {
  type    = string
  default = "vpc-d2b77bb4"
}

variable "ami_instance" {
  type    = string
  # Ubuntu 20.04 LTS
  default = "ami-055d15d9cfddf7bd3"
}

variable "sg_default" {
 type    = string
 default = "sg-0250d85da346f166f"
}

variable "keypair_instance" {
  type    =  string
  default = "agriaku"
}

variable "instance_type" {
  type    =  string
  default = "t2.micro"
}

#variable "private_ip" {
#type    =  string
 # default = "192.169.100.100"
#}

variable "volume_size" {
  type    =  string
  default = "100"
}

variable "volume_type" {
  type    =  string
  default = "gp2"
}

variable "cloud_name" {
  type    =  string
  default = "ec2_agriaku_1"
}

#variable "subnet_public_instance" {
#  type    = string
  # for staging
 # default = "subnet-0d0bd611f23a205e8"

  # for production
  # default = "subnet-0cc65e4da5c8678e8"
#} 

#variable "subnet_private_instance" {
 # type    = string
  # for staging
  #default = "subnet-0d98b12cbf6187c54"

  # for production
  # default = "subnet-0774efa43615caee7"
#}

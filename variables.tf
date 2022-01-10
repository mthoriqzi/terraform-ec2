# README FIRST

variable "region" {
  type    = string
  default = "ap-southeast-1"
}

#variable "access_key" {
#  type    = string
#  default = "AKIA43BLJW3LW4E5DN6D"
#}

#variable "secret_key" {
#  type    = string
#  default = "+p+9R7wuy94X3RmCeHIv88CDG3z6Rh0DPHbetWbu"
#}

#variable "env_instance" {
#  type    = string
#  default = "infraops"
#  # default = "Production"
#}

variable "vpc_id" {
  type    = string
  # for infraops
  default = "vpc-d2b77bb4"
}

variable "ami_instance" {
  type    = string
  # Ubuntu 20.04 LTS
  default = "ami-055d15d9cfddf7bd3"
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

#variable "sg_default" {
#  type    = string
  # for infraops
 # default = "sg-0250d85da346f166f"
#}

variable "keypair_instance" {
  type    =  string
  default = "agriaku"
}

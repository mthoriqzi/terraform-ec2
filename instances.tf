##resource "aws_security_group" "secgroup_instances" {
##  name        = "sg_examples"
##  description = "New Security Group"
##  vpc_id      = var.vpc_id

##  ingress {
##    description = "Open 1 - 9000 only local"
##    from_port   = 1
##    to_port     = 9000
##    protocol    = "tcp"
##    cidr_blocks = ["10.110.0.0/16","10.120.0.0/16","10.130.0.0/16","10.255.0.0/16"]
##  }

##  egress {
##    from_port   = 0
##    to_port     = 0
##    protocol    = "-1"
##    cidr_blocks = ["0.0.0.0/0"]
##  }

##  tags = {
##    Name = "Security Group volantis Open Local"
##  }
##}

resource "aws_instance" "agriaku_ec2" {
  # Ubuntu 20.04 LTS
  ami                         = var.ami_instance
  # Direct Internet Gateway Public
  #subnet_id                   = var.subnet_private_instance
  #vpc_security_group_ids      = [
   # var.sg_default
  #]
  key_name                    = var.keypair_instance
  count                       = 1
  # Core 2 CPU | RAM 4 GB
  instance_type               = var.instance_type
  associate_public_ip_address = "false"
  #private_ip                  = var.private_ip

  root_block_device {
    volume_size = var.volume_size
    volume_type = var.volume_type
    #iops        = "100"
  }

  user_data = <<-_EOF
    #!/bin/bash
    sudo hostnamectl set-hostname agriaku
    sudo timedatectl set-timezone Asia/Jakarta
    sudo apt-get update
  _EOF

  tags = {
    Name                      = var.cloud_name
  }
}


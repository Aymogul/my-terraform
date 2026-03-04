provider "aws" {}

resource "aws_vpc" "myapp-vpc" {
  cidr_block       = var.vpc_cidr_block

  tags = {
    Name = "${var.env_prefix}-vpc"
  }
}
resource "aws_subnet" "myapp-subnet-1" {
    vpc_id = aws_vpc.myapp-vpc.id
    cidr_block = var.subnet_cidr_block
    availability_zone = var.avail_zone
    tags = {
        Name = "${var.env_prefix}-subnet-1"
    }
  
}

#data "aws_vpc" "existing_vpc" {
#    default = true 
#    tags = {
#        Name = "default"      
#   }
#}

#resource "aws_subnet" "practice-2" {
#    vpc_id = data.aws_vpc.existing_vpc.id
#    cidr_block = "172.31.96.0/20"
#    availability_zone = "us-east-1a"
#    tags = {
#        Name = "default-subnet"
#    }
#}
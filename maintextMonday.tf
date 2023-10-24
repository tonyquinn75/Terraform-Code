terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
  access_key 
  secret_key 
}

resource "aws_instance" "someday_on_ec2" {
  ami = ami-0dab0800aa38826f2
  instance_type = "t2.micro"
  count = 1

  
}

resource "aws_instance" "another_day_ec2" {
  ami = ami-0dab0800aa38826f2
  instance_type = "t2.micro"
  count = 3

  
}


resource "aws_eip" "lb" {
   domain = "vpc"
  
}

resource "aws_eip_association" "eip_assoc" {
    instance_id = aws_instance.someday_on_ec2
    allocation_id = aws_eip.lb.a47f23c1
  
}




  

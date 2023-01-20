resource "aws_vpc" "Vpc1" {
  cidr_block       = "80.0.0.0/16"
  
  tags = {
    Name = "Version-VPC"
  }
}

resource "aws_subnet" "Sub1" {
  vpc_id     = aws_vpc.Vpc1.id
  cidr_block = "80.0.0.0/24"

  tags = {                                                            
    Name = "public-subnet1"
  }
}

resource "aws_subnet" "Sub2" {
  vpc_id     = aws_vpc.Vpc1.id
  cidr_block = "80.0.1.0/24"

  tags = {
    Name = "private-subnet1"
  }
}
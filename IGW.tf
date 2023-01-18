resource "aws_internet_gateway" "IGW" {
  vpc_id = aws_vpc.Vpc1.id

  tags = {
    Name = "IGW"
  }
}


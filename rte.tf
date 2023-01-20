resource "aws_route_table" "rte" {
  vpc_id = aws_vpc.Vpc1.id

  route {
    cidr_block = "80.0.0.0/16"
    gateway_id = aws_internet_gateway.IGW.id

  }

  tags = {
    Name = "Git-collabo-rte"
  }
}
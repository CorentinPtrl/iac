resource "aws_eip" "nat" {
  count = length(data.aws_availability_zones.available.names)
}

resource "aws_nat_gateway" "nat" {
  count         = length(data.aws_availability_zones.available.names)
  allocation_id = aws_eip.nat[count.index].id
  subnet_id     = aws_subnet.public[count.index].id

  tags = {
    Name = "nat-gateway-${count.index + 1}"
  }
}
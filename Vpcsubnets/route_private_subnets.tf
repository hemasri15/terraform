resource "aws_route_table_association" "private-route-1-association" {
  route_table_id = aws_route_table.private_route_table.id
  subnet_id      = aws_subnet.private_subnets.id
}
resource "aws_route_table" "private_route_table"{
    vpc_id = aws_vpc.vpc_example.id
}
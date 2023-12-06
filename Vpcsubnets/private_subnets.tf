resource "aws_subnet" "private_subnets" {
  vpc_id     = aws_vpc.vpc_example.id
 cidr_block = var.private_subnet_cidrs
 
 
}
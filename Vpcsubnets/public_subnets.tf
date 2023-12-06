resource "aws_subnet" "public_subnets" {
 
 vpc_id     = aws_vpc.vpc_example.id
 cidr_block = var.public_subnet_cidrs
 
 
}
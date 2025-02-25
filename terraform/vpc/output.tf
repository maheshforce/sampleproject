output "vpc_details" {
  value = {
    vpc_id           = aws_vpc.example.id
    cidr_block       = aws_vpc.example.cidr_block
    public_subnets   = aws_subnet.public_subnets[*].id
    private_subnets  = aws_subnet.private_subnets[*].id
    route_table_ids  = aws_route_table.example[*].id
    internet_gateway = aws_internet_gateway.example.id
    nat_gateways     = aws_nat_gateway.example[*].id
  }
  description = "Details of the created VPC and its associated resources"
}

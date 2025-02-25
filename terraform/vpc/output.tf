output "vpc_details" {
  value = {
    vpc_id           = aws_vpc.example.id
    cidr_block       = aws_vpc.example.cidr_block
    public_subnets   = aws_subnet.public_subnets[*].id
    private_subnets  = aws_subnet.private_subnets[*].id
  }
  description = "Details of the created VPC and its associated resources"
}

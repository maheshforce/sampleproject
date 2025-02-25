output "vpc_details" {
  value = {
    public_subnets   = aws_subnet.public_subnets[*].id
    private_subnets  = aws_subnet.private_subnets[*].id
  }
  description = "Details of the created VPC and its associated resources"
}

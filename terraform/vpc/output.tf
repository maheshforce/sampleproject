output "vpc_details" {
  value = {
    vpc_id      = module.vpc.vpc_id
    public_subnets   = module.vpc.public_subnets
  }
  description = "Details of the created VPC and its associated resources"
}

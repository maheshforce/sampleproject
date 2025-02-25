output "vpc_outputs" {
  value = {
    vpc_id             = module.vpc.vpc_id
    private_subnets    = module.vpc.private_subnets
    public_subnets     = module.vpc.public_subnets
    nat_gateways       = module.vpc.nat_gateway_ids
    vpn_gateway_id     = module.vpc.vpn_gateway_id
    route_table_ids    = module.vpc.private_route_table_ids
    public_route_table = module.vpc.public_route_table_ids
  }
  description = "Outputs from the VPC module"
}

output "vpc_outputs" {
  value = {
    vpc_id             = module.vpc.vpc_cidr_block
     }
  description = "Outputs from the VPC module"
}

output "vpc_details" {
  value = {
    vpc_id      = module.vpc.vpc_id
  }
  description = "Details of the created VPC and its associated resources"
}

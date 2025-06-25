module "vpc" {
  source = "../modules/vpc"
  vpc_name = "main"
  vpc_cidr_block = "10.0.0.0/16"
}

output "test" {
  value = module.vpc
}
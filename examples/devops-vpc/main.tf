provider "aws" {
  region = var.region
}

data "aws_security_group" "default" {
  name   = "default"
  vpc_id = module.vpc.vpc_id
}

module "vpc" {
  source = "../../"

  name      = "devops-network"
  region    = var.region
  component = var.component
  stack     = var.stack
  stage     = var.stage

  cidr                    = var.vpc_cidr
  map_public_ip_on_launch = var.map_public_ip_on_launch

  azs             = var.azs
  private_subnets = var.public_subnets
  public_subnets  = var.private_subnets

  create_database_subnet_group = false

  enable_dns_hostnames = true
  enable_dns_support   = true

  enable_nat_gateway = true
  single_nat_gateway = true

  enable_vpn_gateway = false

  enable_dhcp_options = false

  tags = {
    Owner     = var.owner
    Component = var.component
    Stack     = var.stack
    Stage     = var.stage

  }
}


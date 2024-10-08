resource "aws_vpc" "vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = "false"
  enable_dns_hostnames = "false"
  instance_tenancy     = "default"

  tags = {
    Name = var.vpc_name
  }
}
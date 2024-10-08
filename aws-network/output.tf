output "vpc" {
  description = "ID da vpc que será usado no projeto"
  value       = aws_vpc.vpc.id
}

output "subnets_public_1" {
  description = "ID da subnet-public-1 usado no projeto"
  value       = aws_subnet.public_subnet_1.id
}

output "subnets_public_2" {
  description = "ID da subnet-public-2 usado no projeto"
  value       = aws_subnet.public_subnet_2.id
}

output "subnets_private_1" {
  description = "ID da subnet-private-1 usado no projeto"
  value       = aws_subnet.private_subnet_1.id
}

output "subnets_private_2" {
  description = "ID da subnet-private-2 usado no projeto"
  value       = aws_subnet.private_subnet_2.id
}


output "igw_id" {
  description = "ID da internet-gateway usado no projeto"
  value       = aws_internet_gateway.igw.id
}
variable "vpc_name" {
  description = "VPC na aws para o projeto de testes"
  default     = "vpc-eco-sertao"
}

variable "vpc_cidr" {
  description = "Rede que será usada para a VPC (Type A)"
  default     = "10.0.0.0/16"
}

variable "aws_default_region" {
  default = "us-east-1"
}

variable "project_name" {
  default = "project-eco-sertao"
}

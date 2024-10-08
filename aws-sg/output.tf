output "sg_name" {
  description = "nome do security group criado."
  value       = aws_security_group.sg_project_aws.name
}
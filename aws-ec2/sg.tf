resource "aws_security_group" "sg_project_aws" {
  name   = "sg_project_aws"
  vpc_id = var.vpc_id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }


  ingress {
    description = "port-all"
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  
  tags = {
    Name    = "${var.server_name}"
    Projeto = "${var.project_name}"
  }

}
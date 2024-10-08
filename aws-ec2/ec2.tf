data "aws_eip" "owned_eip" {
  public_ip = var.elastic_ip
}

resource "aws_instance" "server_ubuntu" {
  ami                  = "ami-0c7217cdde317cfec"
  instance_type        = "t2.micro"
  subnet_id            = var.subnets_public_1
  key_name             = "project-aws"
  #associate_public_ip_address = true
  #iam_instance_profile = "AmazonSSMManagedInstanceCore"
  vpc_security_group_ids = [ aws_security_group.sg_project_aws.id ]
  #security_groups = [ aws_security_group.sg_project_aws.name ]
  tags = {
    Name               = var.server_name
    Projeto            = var.project_name
    ScheduledStartStop = "False"
    DNS                = "sem DNS"
    Ansible            = "False"
    ExtendVolume       = "true"
  }

}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.server_ubuntu.id
  allocation_id = data.aws_eip.owned_eip.id
}
data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "eco-sertao-s3-terraform-tfstate"
    key    = "aws_vpc/terraform.tfstate"
    region = "us-east-1"
  }
}
resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "${var.aws_default_region}a"

  tags = {
    Name = "${var.project_name}-public-subnet-1-${var.aws_default_region}a"
  }
}

resource "aws_subnet" "private_subnet_1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.aws_default_region}a"

  tags = {
    Name = "${var.project_name}-private_subnet-1-${var.aws_default_region}a"
  }
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.3.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "${var.aws_default_region}b"

  tags = {
    Name = "${var.project_name}-public-subnet-2-${var.aws_default_region}b"
  }
}


resource "aws_subnet" "private_subnet_2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.4.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.aws_default_region}b"

  tags = {
    Name = "${var.project_name}-private-subnet-2-${var.aws_default_region}b"
  }
}
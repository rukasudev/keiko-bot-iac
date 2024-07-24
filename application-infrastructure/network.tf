resource "aws_vpc" "keiko_vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name        = var.vpc_name
    Environment = var.environment
    Project     = var.project_name
  }
}

resource "aws_subnet" "keiko_subnet_a" {
  vpc_id                  = aws_vpc.keiko_vpc.id
  cidr_block              = var.subnet_cidr_block_a
  availability_zone       = var.subnet_availability_zone_a
  map_public_ip_on_launch = true
}

resource "aws_subnet" "keiko_subnet_b" {
  vpc_id                  = aws_vpc.keiko_vpc.id
  cidr_block              = var.subnet_cidr_block_b
  availability_zone       = var.subnet_availability_zone_b
  map_public_ip_on_launch = true
}

resource "aws_subnet" "keiko_subnet_c" {
  vpc_id                  = aws_vpc.keiko_vpc.id
  cidr_block              = var.subnet_cidr_block_c
  availability_zone       = var.subnet_availability_zone_c
  map_public_ip_on_launch = true
}

resource "aws_security_group" "keiko_security_group" {
  name        = var.security_group_name  
  vpc_id      = aws_vpc.keiko_vpc.id

  tags = {
    Name        = var.security_group_name
    Environment = var.environment
    Project     = var.project_name
  }
  
  ingress {
    from_port   = 5000
    to_port     = 5000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

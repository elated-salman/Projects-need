#creating 1st web subnet
resource "aws_subnet" "pub-subnet-1" {
  vpc_id                  = aws_vpc.vpc_pjt.id
  cidr_block              = "${var.websub_1}"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "pub-subnet-1"
  }

}

#creating 2nd web subnet
resource "aws_subnet" "pub-subnet-2" {
  vpc_id                  = aws_vpc.vpc_pjt.id
  cidr_block              = "${var.websub_2}"
  availability_zone       = "ap-south-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "pub-subnet-2"
  }

}

#creating 1st application subnet
resource "aws_subnet" "application-subnet-1" {
  vpc_id                  = aws_vpc.vpc_pjt.id
  cidr_block              = "${var.appsub_1}"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "application-subnet-1"
  }

}

#creating 2nd application subnet
resource "aws_subnet" "application-subnet-2" {
  vpc_id                  = aws_vpc.vpc_pjt.id
  cidr_block              = "${var.appsub_2}"
  availability_zone       = "ap-south-1b"
  map_public_ip_on_launch = false

  tags = {
    Name = "application-subnet-2"
  }

}

#creating 1st data base subnet
resource "aws_subnet" "database-subnet-1" {
  vpc_id                  = aws_vpc.vpc_pjt.id
  cidr_block              = "${var.dbsub_1}"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "database-subnet-1"
  }

}

#creating 2nd  data base subnet
resource "aws_subnet" "database-subnet-2" {
  vpc_id                  = aws_vpc.vpc_pjt.id
  cidr_block              = "${var.dbsub_2}"
  availability_zone       = "ap-south-1b"
  map_public_ip_on_launch = false

  tags = {
    Name = "database-subnet-2"
  }

}




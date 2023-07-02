#creating 1st application subnet
resource "aws_subnet" "pub-sub-1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "10.0.0.0/27"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "pub-sub-1"
  }

}

#creating 2nd application subnet
resource "aws_subnet" "pvt-sub-2" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "10.0.0.64/27"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = false

  tags = {
    Name = "pvt-sub-2"
  }

}

#creating 1st data base subnet
resource "aws_subnet" "dbs-1" {
  vpc_id                  = aws_vpc.vpc_deepu.id
  cidr_block              = "${var.dbsub_1}"
  availability_zone       = "ap-northeast-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "dbs-1"
  }

}

#creating 2nd  data base subnet
resource "aws_subnet" "dbs-2" {
  vpc_id                  = aws_vpc.vpc_deepu.id
  cidr_block              = "${var.dbsub_2}"
  availability_zone       = "ap-northeast-1c"
  map_public_ip_on_launch = false

  tags = {
    Name = "dbs-2"
  }

}


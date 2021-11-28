resource "aws_vpc" "vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "${var.name_prefix}_VPC"
    }
}

resource "aws_subnet" "public" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "ap-northeast-3a"
    tags = {
        Name = "${var.name_prefix}_Subnet_Public"
    }
}

resource "aws_subnet" "private1" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.2.0/24"
    availability_zone = "ap-northeast-3a"
    tags = {
        Name = "${var.name_prefix}_Subnet_Private1"
    }
}

resource "aws_subnet" "private2" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.3.0/24"
    availability_zone = "ap-northeast-3b"
    tags = {
        Name = "${var.name_prefix}_Subnet_Private2"
    }
}

resource "aws_subnet" "private3" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.4.0/24"
    availability_zone = "ap-northeast-3c"
    tags = {
        Name = "${var.name_prefix}_Subnet_Private3"
    }
}

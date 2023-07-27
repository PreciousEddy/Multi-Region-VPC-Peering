provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  region = "us-west-1"
}

resource "aws_vpc" "vpc_east" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_vpc" "vpc_west" {
  cidr_block = "10.1.0.0/16"
}

resource "aws_vpc_peering_connection" "vpc_peering_connection" {
  name = "vpc_peering_connection"
  vpc_id_a = aws_vpc.vpc_east.id
  vpc_id_b = aws_vpc.vpc_west.id
}

resource "aws_route" "route_east" {
  route_table_id = aws_vpc.vpc_east.default_route_table_id
  destination_cidr_block = "10.1.0.0/16"
  gateway_id = aws_vpc.vpc_west.id
}

resource "aws_route" "route_west" {
  route_table_id = aws_vpc.vpc_west.default_route_table_id
  destination_cidr_block = "10.0.0.0/16"
  gateway_id = aws_vpc.vpc_east.id
}

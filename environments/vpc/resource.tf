resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.myvpc.id
}
resource "aws_vpc" "myvpc" {
  cidr_block = var.mycidr
  enable_dns_hostnames = true
  #domain     = vpc
  tags = {
    Name = var.vpcName
  }
}
  resource "aws_subnet" "my_subnet" {
    vpc_id     = aws_vpc.myvpc.id
    cidr_block = "192.168.0.0/26"
    map_public_ip_on_launch = true

    depends_on = [aws_internet_gateway.gw]


    tags = {
      Name = "subway"
    }
  }
    resource "aws_network_interface" "netty" {
      subnet_id   = aws_subnet.my_subnet.id
      private_ips = ["192.168.0.20"]

      tags = {
        Name = "primary_network_interface"
      }
    }
  


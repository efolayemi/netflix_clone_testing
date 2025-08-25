# Public Subnets
resource "aws_subnet" "public_1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.0.0/18"
  map_public_ip_on_launch = true

  tags = {
    Name = "netflix_clone_public_subnet_1"
    Type = "public"
  }
}


resource "aws_subnet" "public_2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.64.0/18"
  map_public_ip_on_launch = true

  tags = {
    Name = "netflix_clone_public_subnet2"
    Type = "public"
  }
}
#Private Subnets
resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.128.0/18"
  tags = {
    Name = "netflix_clone_private_subnet"
    Type = "private"

  }
}
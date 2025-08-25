# NAT Gateway Elastic IPs
resource "aws_eip" "nat" {

  domain     = "vpc"
  depends_on = [aws_internet_gateway.main]

  tags = {
    Name = "${var.project_name}-nat-eip"
  }
}
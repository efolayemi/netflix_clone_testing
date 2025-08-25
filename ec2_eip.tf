resource "aws_eip" "my_eip" {
  domain = "vpc" # Required if your instance is in a VPC
}


#Associate the Elastic IP with the EC2 Instance
resource "aws_eip_association" "my_eip_assoc" {
  instance_id   = aws_instance.netflix_clone_ec2.id
  allocation_id = aws_eip.my_eip.id

}

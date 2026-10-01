resource "aws_security_group" "ec2_sg" {
  name        = "scrollme-ec2-sg"
  description = "Security group for SCROLLME EC2 instances"
  vpc_id      = data.aws_vpc.default.id

  # HTTP&https
  ingress {
    description = "HTTP from anywhere"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["17.4.4.2/32"]
  }

}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type_i
  vpc_security_group_ids = [aws_security_group.allow-all-from-tf.id]

  tags = {
    Name = "ec2-from-tf"
  }
}

resource "aws_security_group" "allow-all-from-tf" {
  name        = "tf-allow-all-sg"
  description = "Allow all traffic"
  #vpc_id      = aws_vpc.main.id

  ingress {
    description      = "Allow all ports"
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.cidr_blocks
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow-all-sg-tag"
  }
}
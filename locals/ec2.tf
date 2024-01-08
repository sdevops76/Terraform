resource "aws_instance" "myec2" {
  ami = var.ami-id
  instance_type = local.instance_type

  tags = {
    Name = "ec2-from-terraform"
  }
}
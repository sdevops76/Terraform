resource "aws_instance" "ec2module" {
  ami = var.ami_v
  instance_type = var.instance_type_v

  tags = {}
}
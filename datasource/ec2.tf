resource "aws_instance" "myec2" {
  ami = data.aws_ami.latest.id
  instance_type = "t2.micro"

  tags = {
    name = "ec2-terraform-datasource-example"
  }
}
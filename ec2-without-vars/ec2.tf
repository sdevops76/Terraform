resource "aws_instance" "my-ec2-1" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
}
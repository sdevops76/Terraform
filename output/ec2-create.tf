#1.command line variable (terraform plan -var="instance-type=t2.large")
#2.command line file (terraform plan -var-file="vars.tfvars")
#3.terraform.tfvars
#4.variable.tf
#check the priority of environmental variable by testing
resource "aws_instance" "myec2" {
  ami           = var.ami-id
  instance_type = var.instance-type

  tags = {
    Name = "ec2-terraform-output"
  }
}
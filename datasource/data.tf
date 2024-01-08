data "aws_ami" "latest" {
  most_recent = true

  owners = ["973714476881"] 

 /*  filter {
    name = "root-device-type"
    values = ["ebs"]
  } */

  filter {
        name   = "name"
        values = ["Centos-8-DevOps-Practice"]
 }

}
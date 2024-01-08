module "userproj-module" {
  source = "../ec2"
  #instance_type_v = "t2.small"  #it will override the module's vlaue
  instance_type_v = var.instance_type_um_v
}
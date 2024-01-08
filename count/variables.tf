variable "instance_names" {
  type = list
  default = ["mongodb","redis","mysql","rabbitmq","catalogue","user","cart","shipping","payment","dispatch","web"]
}

variable "ami_id" {
  default = "ami-03265a0778a880afb"
}

variable "zone_id" {
  default = "Z0570107153B83E7PPGLU"
}

variable "domain_name" {
  default = "suresh.fun"
}
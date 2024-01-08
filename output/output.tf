# output "instance_info" {
#   value = aws_instance.myec2  #prints entire instance info
# }

output "instance_id" {
  value = aws_instance.myec2.id
}

output "public_ip" {
  value = aws_instance.myec2.public_ip
}

output "private_ip" {
  value = aws_instance.myec2.private_ip
}

output "instance_type" {
  value = aws_instance.myec2.instance_type
}
output "public_ip" {
  value = aws_instance.ec2module.public_ip
}

output "private_ip" {
  value = aws_instance.ec2module.private_ip
}

output "instance_id" {
  value = aws_instance.ec2module.id
}
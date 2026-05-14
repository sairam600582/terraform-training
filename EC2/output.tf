output "instance_id" {
  description = "ID of the instance"
  value = aws_instance.my-instance.id
}

output "instance_public_id" {
    description = "IP of the instance"
    value = aws_instance.my-instance.public_ip
}

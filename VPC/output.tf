output "subnet_id" {
  value = aws_subnet.public-subnet.id
}

output "security_group_id" {
  value = aws_security_group.sg-1.id
}

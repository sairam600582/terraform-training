resource "aws_instance" "my-instance" {
  ami = var.ami
  instance_type = var.instance
  security_groups = [aws_security_group.sg-1.id]
  subnet_id = aws_subnet.public-subnet.id
  key_name = aws_key_pair.generated_key.key_name
  availability_zone = var.availability_zone

  associate_public_ip_address = true

  tags = {
    Name = "Demon-Server"
  }
}

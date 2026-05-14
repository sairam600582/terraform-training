resource "aws_instance" "my-instance" {
  ami               = var.ami
  instance_type     = var.instance

  subnet_id = var.subnet_id

  vpc_security_group_ids = [var.security_group_id]

  key_name = var.key_name

  availability_zone = var.availability_zone

  associate_public_ip_address = true

  tags = {
    Name = "Demon-Server"
  }
}

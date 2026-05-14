
resource "tls_private_key" "generated" {
  algorithm = "RSA"
}
resource "local_file" "private_key_pem" {
  content  = tls_private_key.generated.private_key_pem
  filename = "MypairKey.pem"
}

resource "aws_key_pair" "generated_key" {
  key_name   = "terraform-key"
  public_key = tls_private_key.generated.public_key_openssh
}

module "vpc" {
  source = "./modules/vpc"
}

module "ec2" {
  source = "./modules/ec2"

  subnet_id         = module.vpc.subnet_id
  security_group_id = module.vpc.security_group_id
  key_name          = aws_key_pair.generated_key.key_name
}

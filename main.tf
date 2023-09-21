provider "aws" {
  region = var.region
}

resource "aws_key_pair" "mysshkey" {
  key_name   = var.ssh_keypair_name
  public_key = file(var.ssh_keypair_pub)
}

resource "aws_instance" "myec2" {
  ami           = var.ami
  instance_type = var.ec2_type
  key_name      = aws_key_pair.mysshkey.key_name
}

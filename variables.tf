var "region" {
  type        = string
  description = "AWS region where to create resources"
  default     = "us-east-1"
}

var "ami" {
  type        = string
  description = "Instance Image ID"
  default     = "ami-06db4d78cb1d3bbf9"
}

var "ec2_type" {
  type        = string
  description = "EC2 type"
  default     = "t2.micro"
}

var "ssh_keypair_name" {
  type        = string
  description = "SSH keypair name"
  default     = "my_ed25519_keypair"
}

var "ssh_keypair_pub" {
  type        = string
  description = "SSH public key file"
  default     = "~/.ssh/id_ed25519.pub"
}

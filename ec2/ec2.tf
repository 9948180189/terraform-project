resource "aws_security_group" "allow_ssh_terraform" {
  name        = "allow_ssh"
  description = "Allow ssh inbound traffic outbound traffic"
 
 egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

   tags = {
    Name = "Hari_Sg"
   }
}

resource "aws_instance" "terraform" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t2.medium"
    vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]
    tags = {
    Name = "Terraform_Server"
   }


}
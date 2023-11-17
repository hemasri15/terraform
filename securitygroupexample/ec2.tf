provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "terraformdemo" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = "ssh"
  vpc_security_group_ids = [aws_security_group.https_access.id]

connection {
  type        = "ssh"
  user        = "ec2-user"
  private_key = "${file("ssh.pem")}"
  host = self.public_ip
}
provisioner "remote-exec"{
  inline = ["sudo yum install -y nginx","sudo service nginx start"]


}
}
output "publicip"{
  value = aws_instance.terraformdemo.public_ip
}

resource "aws_security_group" "https_access" {
  name = "https_access"

  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = "80"
    to_port     = "80"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}








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
resource "aws_instance" "terraformdemo" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.http_access.id]


connection {
  type        = "ssh"
  user        = "ec2-user"
  private_key = "${file("../securitygroupexample/ssh.pem")}"
  host = self.public_ip
}
provisioner "remote-exec"{
  inline = ["sudo yum install -y nginx","sudo service nginx start"]


}
}

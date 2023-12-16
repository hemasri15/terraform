resource "aws_instance" "terraform_iam" {
  ami      =  var.ami_id
  instance_type =  var.instance_type
  key_name      =  var.key_name
 
 iam_instance_profile = aws_iam_instance_profile.demo-profile.name
}
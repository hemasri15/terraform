output "publicip"{
  value = aws_instance.terraformdemo.public_ip
}
output "vpcid" {
    value = data.aws_vpc.default.id
}
 
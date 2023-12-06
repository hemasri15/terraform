
output "vpcid" {
    value = data.aws_vpc.default.id
}
output "healthcheck"{
  value = aws_autoscaling_group.auto_scaling.health_check_grace_period
}
output "publicsubnet"{
  value = aws_subnet.public_subnets.cidr_block
}

output "privatesubnet"{
  value = aws_subnet.private_subnets.cidr_block
}


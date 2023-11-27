
output "vpcid" {
    value = data.aws_vpc.default.id
}
output "healthcheck"{
  value = aws_autoscaling_group.auto_scaling.health_check_grace_period
}


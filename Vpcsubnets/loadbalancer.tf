resource "aws_lb" "sample_lb"{
    name= var.alb_names
    internal = false
    load_balancer_type = "application"
    security_groups = [aws_security_group.http_access.id]
    enable_cross_zone_load_balancing = "true" 
    subnets = [aws_subnet.public_subnets.id]
}
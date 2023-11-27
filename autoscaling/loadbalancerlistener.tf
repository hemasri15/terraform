resource "aws_lb_listener" "lb_listener_http" {
  // name = var.alb_names
   load_balancer_arn    = aws_lb.sample_lb.id
   port                 = "80"
   protocol             = "HTTP"
   default_action {
    target_group_arn = aws_lb_target_group.sample_tg.id
    type             = "forward"
  }
}
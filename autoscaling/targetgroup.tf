resource "aws_lb_target_group" "sample_tg" {
   name               = var.alb_names
   target_type        = "instance"
   port               = 80
   protocol           = "HTTP"
   vpc_id = data.aws_vpc.default.id
}
resource "aws_lb_target_group_attachment" "test" {
  target_group_arn = aws_lb_target_group.sample_tg.arn
  target_id        = aws_launch_template.launch_example.id
  port             = 80
}
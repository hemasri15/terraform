resource "aws_lb_target_group" "sample_tg" {
   name               = var.alb_names
   target_type        = "instance"
   port               = 80
   protocol           = "HTTP"
   
   
}
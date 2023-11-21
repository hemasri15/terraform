variable "ami_id" {
  type    = string
  default = "ami-05c13eab67c5d8861"

}
variable "instance_type" {
  type    = string
  default = "t2.micro"

}
variable "alb_names" {
   type = string
   default = "test”

}
variable "health_check" {
   type = string
   default = "{
      "timeout"  = "10"
      "interval" = "20"
      "path"     = "/"
      "port"     = "80"
      "unhealthy_threshold" = "2"
      "healthy_threshold" = "3"
    }"
}
variable "ami_id" {
  type    = string
  default = "ami-05c13eab67c5d8861"

}
variable "instance_type" {
  type    = string
  default = "t2.micro"

}
variable "key_name" {
  type        = string
  description = "enter key name"
}
variable "launchtemplate" {
  type = string

}
variable "role_name" {
  type    = string
  default = "examplerole"
}
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
   default = "test"
}

variable "security_grp"{
  type = string
  default = "http_access"
}
variable "key_name"{
  type = string
  description = "enter key name"
}
variable "launchtemplate"{
    type = string

}
variable "public_subnet_cidrs" {
 type        = string
 description = "Public Subnet CIDR values"
 default     = "10.0.1.0/24"
}
 
variable "private_subnet_cidrs" {
 type        = string
 description = "Private Subnet CIDR values"
 default     = "10.0.4.0/25"
}

/*variable "My_ami" {
  description = "The aws ami"
  type = string
  default = "ami-0e21e5dcc0b85088a"
}*/

variable "instance_type" {
  description = "The aws instance type"
  type = string
  default = "t2.micro"
}

variable "region" {
  description = "The aws region"
  type = string
  default = "eu-west-2"
}

variable "access_key" {
  description = "aws access key"
  type = string
  default = "dbkey"
}  
variable "ec2name" {
  type = string
  default = "demo"
} 
variable "ingressrules" {
    type = list(number)
    default = [22,80,443,8080,]
}
variable "egressrules" {
    type = list(number)
    default = [22,25,80,443,8080,]
  }

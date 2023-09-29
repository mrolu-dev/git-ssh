variable "instance-type" {
  type    = string
  default = "t2.micro"
}
variable "name" {
  type    = string
  default = "FirstEC2"
}
variable "vpcName" {
  type    = string
  default = "FirstVPC"
}
variable "mycidr" {
  type    = string
  default = "192.168.0.0/24"
}


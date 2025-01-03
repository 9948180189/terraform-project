variable "ami_id" {
  type    = string
  default = "ami-09c813fb71547fc4f"
  description = "this is AMI id of devops-practice which is RHEL-9"
}
variable "instance_type" {
  type = string
  default = "t3.medium"
  
}
variable "tags" {
  type = map
  
  default = {
    Name = "backend"
    Project = "expense"
    Component = "backend"
    Environment = "Dev"
    Terraform = "true"

  }
}
variable "sg_name" {
  default = "allow_ssh"
}

variable "sg_description" {
  default = "Allow port number 22 for ssh access"
}
variable "from_port" {
  default = 22
  type = number
}
variable "to_port" {
  default = 22
  type = number
}
variable "protocol" {
  default = "tcp"
}
variable "ingress_ciidr"{
  type = list(string)
  default = ["0.0.0.0/0"]
}
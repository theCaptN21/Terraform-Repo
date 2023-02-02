#Project variables
variable "aws_region" {
   default = "us-east-1"
}

variable "vpc_cidr_block" {
   description = "CIDR block for VPC"
   type = string
   default = "10.0.0.0/16"
}

variable "public_subnet_cidr_block" {
   description = "CIDR block for public subnet"
   type = string
   default = "10.0.1.0/24"
}

variable "my_ip" {
   description = "73.152.9.225"
   type = string
   sensitive = true
}
variable "ec2_instance_type" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "jenkins_server"
}

variable "region" {
  default = "eu-central-1"
  type    = string
}

variable "instance_name" {
  default = "github-ansible-ec2"
  type    = string
}

variable "ami_id" {
  default = "ami-0229b8f55e5178b65"  # Amazon  Linux 2 in eu-central-1
  type    = string 
}

variable "instance_type" {
  default = "t2.micro"
  type    = string  
}

variable "key_name" {
  description = "AWS SSH key"
  default     = "SSH_key"
  type        = string
}

variable "env" {
  default = "dev"
  type    = string 
}

variable "region" {
  default = "ap-south-1"
}

variable "instance_type" {
  default = "t4g.micro" # Graviton (ARM)
}

variable "ami" {
  description = "Amazon Linux 2 AMI (ARM)"
  default     = "ami-0f58b397bc5c1f2e8" # Update if needed
}

variable "key_name" {
  description = "Your AWS key pair"
}

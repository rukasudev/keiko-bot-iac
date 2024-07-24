variable "project_name" {
  default = "keiko-bot"
}

variable "environment" {
  default = "prod"
}

variable "region" {
  default = "sa-east-1"
}

variable "vpc_cidr_block" {
  default = "172.31.0.0/16"
}

variable "subnet_availability_zone_a" {
  default = "sa-east-1a"
}

variable "subnet_availability_zone_b" {
  default = "sa-east-1b"
}

variable "subnet_availability_zone_c" {
  default = "sa-east-1c"
}

variable "subnet_cidr_block_a" {
  default = "172.31.0.0/20"
}

variable "subnet_cidr_block_b" {
  default = "172.31.16.0/20"
}

variable "subnet_cidr_block_c" {
  default = "172.31.32.0/20"
}

variable "vpc_name" {
  default = "keiko-vpc"
}

variable "security_group_name" {
  default = "keiko-security-group"
}

# variable "instance_ami" {
#   default = "ami-0c55b159cbfafe1f0"
# }

# variable "instance_type" {
#   default = "t2.micro"
# }

# variable "key_pair_name" {
#   default = "my-key-pair"
# }

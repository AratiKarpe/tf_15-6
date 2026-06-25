variable "this_ami" {
  default = "ami-0e5497a77ef21b5ac"
}

variable "This_instance_type" {
  default = "t2.micro"
}

variable "This_vpc_security_group_ids" {
  default = "sg-0c3878cd86dc51539"
}

variable "this_count" {
  default = 1
}

variable "this_disable_api_termination" {
  default = false
}
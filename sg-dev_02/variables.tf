variable "project_name" {
  default = "mielleium"
}

variable "environment" {
  default = "dev"
}

variable "sg_name" {
  default = "mysql"


}

variable "common_tags" {
  default = {
    project_name = "devops"
    environment  = "dev"
    terraform    = true
  }
}

variable "sg_description" {
    default = "this security group used for mielleium project"
}


variable "project_name" {
    default = "mielleium"
}

variable "environment" {
    default = "dev"
}

variable "common_tags" {
  default = {
    project_name = "mielleium"
    Environment  = "dev"
    terraform    = true
  }

}

variable "domain_name" {
    default = "daws82s.online"
}

variable "zone_id" {
    default = "Z021448929NMXW4P65UQE"
}
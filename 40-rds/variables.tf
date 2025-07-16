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

variable "zone_id" {
    default = "Z08214363QTM01YKTV3I6"
}

variable "domain_name" {
    default = "devops.online"
}
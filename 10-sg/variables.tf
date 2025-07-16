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

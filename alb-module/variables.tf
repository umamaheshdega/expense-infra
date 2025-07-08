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
    default = "Z0763118WV63KYFJD7RF"
}

variable "domain_name" {
    default = "ansible.mahesh.com"
}
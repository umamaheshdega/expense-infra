data "aws_ssm_parameter" "vpc_id" {
  name = "/${var.project_name}/${var.environment}/vpc_id"

}

# data "aws_security_group" "mysql_id" {
#   value = "module.mysql_dev.aws_security_group.id.value"
# }


# data "aws_security_group" "mysql_id" {
#   filter {
    
#     values = ["mysql-dev"]
#   }
# }


# data "aws_ssm_parameter" "bastion_sg_id" {
#   name = "/${var.project_name}/${var.environment}/bastion_sg"

# }
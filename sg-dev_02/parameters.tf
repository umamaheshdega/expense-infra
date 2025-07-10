resource "aws_ssm_parameter" "mysql_sg_id" {
  name  = "/${var.project_name}/${var.environment}/mysql_dev"
  type  = "String"
  value = module.mysql_dev.sg_id
}


resource "aws_ssm_parameter" "bastion_sg" {
  name  = "/${var.project_name}/${var.environment}/bastion_sg"
  type  = "String"
  value = module.bastion_sg.sg_id
}

# resource "aws_ssm_parameter" "alb_ingress_sg_id" {
#   name  = "/${var.project_name}/${var.environment}/alb_ingress_sg_id"
#   type  = "String"
#   value = module.alb_ingress_sg.sg_id
# }

# resource "aws_ssm_parameter" "vpn_sg_id" {
#   name  = "/${var.project_name}/${var.environment}/vpn_sg_id"
#   type  = "String"
#   value = module.vpn_sg.sg_id
# }

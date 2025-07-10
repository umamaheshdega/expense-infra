module "mysql_dev" {
  source         = "git::https://github.com/umamaheshdega/terraform-aws-securitygroup.git?ref=main"
  project_name   = var.project_name
  environment    = var.environment
  sg_name        = var.sg_name
  sg_description = var.sg_description
  vpc_id         = data.aws_ssm_parameter.vpc_id.value
  common_tags = var.common_tags

} 

module "backend_sg" {
  source         = "git::https://github.com/umamaheshdega/terraform-aws-securitygroup.git?ref=main"
  project_name   = var.project_name
  environment    = var.environment
  sg_name        = "backend"
  sg_description = "created for backend servers"
  vpc_id         = data.aws_ssm_parameter.vpc_id.value
  common_tags = var.common_tags

} 

module "frontend_sg" {
  source         = "git::https://github.com/umamaheshdega/terraform-aws-securitygroup.git?ref=main"
  project_name   = var.project_name
  environment    = var.environment
  sg_name        = "frontend"
  sg_description = "created for frontend servers"
  vpc_id         = data.aws_ssm_parameter.vpc_id.value
  common_tags = var.common_tags

} 

module "bastion_sg" {
  source         = "git::https://github.com/umamaheshdega/terraform-aws-securitygroup.git?ref=main"
  project_name   = var.project_name
  environment    = var.environment
  sg_name        = "bastion"
  sg_description = "created for bastion host"
  vpc_id         = data.aws_ssm_parameter.vpc_id.value
  common_tags = var.common_tags

} 

module "vpn_sg" {
    source = "git::https://github.com/umamaheshdega/terraform-aws-securitygroup.git?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = "vpn"
    sg_description = "Created for VPN instances in dev"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags
}

# module "alb_ingress_sg" {
#     source = "git::https://github.com/umamaheshdega/terraform-aws-securitygroup.git?ref=main"
#     project_name = var.project_name
#     environment = var.environment
#     sg_name = "app-alb"
#     sg_description = "Created for backend ALB in expense dev"
#     vpc_id = data.aws_ssm_parameter.vpc_id.value
#     common_tags = var.common_tags
# }

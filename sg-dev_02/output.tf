output "sg_ids" {
   value = [
      module.mysql_dev.sg_id,
      module.backend_sg.sg_id,
      module.frontend_sg.sg_id,
      module.bastion_sg.sg_id,
      # module.vpn_sg.sg_id
      
   ]
}





# # output "bastion_sg_id" {
# #   value = module.bastion_sg
# # }

# # output "vpn_sg_id" {
# #   value = module.vpn_sg
# # }

# # output "alp_ingress_sg_id" {
# #   value = module.alb_ingress_sg
# # }
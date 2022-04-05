##############################################################################
# Flow Logs Locals
# > from `main.tf`
##############################################################################

locals {
  flow_logs_map = {
    # For each vpc network
    for vpc_network in var.vpcs :
    # Create a map containing the bucket name, id, and resource group if flow logs bucket name provided
    (vpc_network.prefix) => {
      vpc_id                 = var.vpc_modules[vpc_network.prefix].vpc_id
      bucket                 = vpc_network.flow_logs_bucket_name
      instance_reource_group = local.cos_bucket_map[vpc_network.flow_logs_bucket_name].instance_reource_group
    } if lookup(vpc_network, "flow_logs_bucket_name", null) != null
  }
}

##############################################################################

##############################################################################
# VPC Locals
##############################################################################

locals {
  vpc_map = {
    for vpc_network in var.vpcs :
    (vpc_network.prefix) => vpc_network
  }
}

##############################################################################
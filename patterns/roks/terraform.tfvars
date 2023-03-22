prefix                   = "simple-slz"
region                   = "us-east"
ssh_public_key           = null
tags                     = []
vpcs                     = ["management", "workload"]
enable_transit_gateway   = true
add_atracker_route       = true
hs_crypto_instance_name  = null
hs_crypto_resource_group = null
cluster_zones            = 3
kube_version             = "default"
flavor                   = "bx2.16x64"
workers_per_zone         = 1
entitlement              = null
wait_till                = "IngressReady"
update_all_workers       = false
override                 = true

##############################################################################
# F5 Deployment variables
##############################################################################
add_edge_vpc                        = false
provision_teleport_in_f5            = false
create_f5_network_on_management_vpc = false
vpn_firewall_type                   = null
f5_image_name                       = "f5-bigip-17-0-0-1-0-0-4-all-1slot"
f5_instance_profile                 = "cx2-4x8"
hostname                            = "f5-ve-01"
domain                              = "local"
tmos_admin_password                 = null
enable_f5_external_fip              = true

##############################################################################
# Bastion Host deployment
##############################################################################
use_existing_appid        = false
appid_name                = "slz-appid"
appid_resource_group      = null
teleport_instance_profile = "cx2-4x8"
teleport_vsi_image_name   = "ibm-ubuntu-18-04-6-minimal-amd64-2"
teleport_license          = null
https_cert                = null
https_key                 = null
teleport_hostname         = null
teleport_domain           = null
message_of_the_day        = null
teleport_admin_email      = null
teleport_management_zones = 0

##############################################################################
# Security and Compliance Center
##############################################################################
enable_scc                = false
scc_collector_description = null
scc_scope_description     = null


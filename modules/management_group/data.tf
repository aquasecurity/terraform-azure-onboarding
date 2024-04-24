
data "http" "autoconnect_agentless_scanner_role" {
  url = "https://${var.aqua_bucket_name}.s3.amazonaws.com/autoconnect_agentless_scanner_delete_role.json"
}

data "http" "autoconnect_agentless_deployment_management_group_template" {
  url = "https://${var.aqua_bucket_name}.s3.amazonaws.com/autoconnect_deployment_management_group_template.json"
}
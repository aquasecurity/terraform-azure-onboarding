data "http" "autoconnect_cspm_scanner_role" {
  url = "https://${var.aqua_bucket_name}.s3.amazonaws.com/autoconnect_cspm_scanner_role.json"
}

data "http" "autoconnect_agentless_scanner_role" {
  url = "https://${var.aqua_bucket_name}.s3.amazonaws.com/autoconnect_agentless_scanner_role.json"
}
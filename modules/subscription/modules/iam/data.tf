data "http" "autoconnect_cspm_scanner_role" {
  url = "https://cloudsecurity-${var.env}-azure-cfn.s3.amazonaws.com/autoconnect_cspm_scanner_role.json"
}

data "http" "autoconnect_agentless_scanner_role" {
  url = "https://cloudsecurity-${var.env}-azure-cfn.s3.amazonaws.com/autoconnect_agentless_scanner_role.json"
}

data "http" "autoconnect_agentless_scanner_delete_role" {
  url = "https://cloudsecurity-${var.env}-azure-cfn.s3.amazonaws.com/autoconnect_agentless_scanner_delete_role.json"
}
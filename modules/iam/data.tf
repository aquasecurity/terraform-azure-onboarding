data "http" "autoconnect_cspm_scanner_role" {
  url = "https://${var.aqua_bucket_name}.s3.amazonaws.com/autoconnect_cspm_scanner_role.json"

  lifecycle {
    postcondition {
      condition     = self.status_code == 200 && can(jsondecode(self.response_body))
      error_message = "autoconnect_cspm_scanner_role.json: expected HTTP 200 and JSON body from bucket ${var.aqua_bucket_name}, got status ${self.status_code}. Upload the object or fix the bucket name."
    }
  }
}

data "http" "autoconnect_registry_scanner_role" {
  url = "https://${var.aqua_bucket_name}.s3.amazonaws.com/autoconnect_registry_scanner_role.json"

  lifecycle {
    postcondition {
      condition     = self.status_code == 200 && can(jsondecode(self.response_body))
      error_message = "autoconnect_registry_scanner_role.json: expected HTTP 200 and JSON body from bucket ${var.aqua_bucket_name}, got status ${self.status_code}. Upload the object or fix the bucket name."
    }
  }
}

data "http" "autoconnect_serverless_scanner_role" {
  url = "https://${var.aqua_bucket_name}.s3.amazonaws.com/autoconnect_serverless_scanner_role.json"

  lifecycle {
    postcondition {
      condition     = self.status_code == 200 && can(jsondecode(self.response_body))
      error_message = "autoconnect_serverless_scanner_role.json: expected HTTP 200 and JSON body from bucket ${var.aqua_bucket_name}, got status ${self.status_code}. Upload the object or fix the bucket name."
    }
  }
}

data "http" "autoconnect_agentless_scanner_role" {
  count = var.volume_scanning_deployment ? 1 : 0
  url   = "https://${var.aqua_bucket_name}.s3.amazonaws.com/autoconnect_agentless_scanner_role.json"

  lifecycle {
    postcondition {
      condition     = self.status_code == 200 && can(jsondecode(self.response_body))
      error_message = "autoconnect_agentless_scanner_role.json: expected HTTP 200 and JSON body from bucket ${var.aqua_bucket_name}, got status ${self.status_code}. Upload the object or fix the bucket name, or set volume_scanning_deployment = false."
    }
  }
}
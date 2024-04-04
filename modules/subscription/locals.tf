locals {
  tags = merge({ "aqua-agentless-scanner" = "true" }, var.aqua_custom_tags)
}
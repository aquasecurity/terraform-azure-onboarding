locals {
  env  = lookup({ "prod" = "prod", "stg" = "stage" }, regex("prod|stg", var.aqua_autoconnect_url), "stage")
}
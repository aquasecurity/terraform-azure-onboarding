# NOTE:
# We use "external" provider here in order to provide the client
# with the onboarding status if it successfully finished.
data "external" "autoconnect_continuous_onboarding" {

  program = ["python3", "${path.module}/continuous_onboarding.py"]

  query = {
    aqua_api_key                   = var.aqua_api_key
    aqua_api_secret                = var.aqua_api_secret
    aqua_autoconnect_url           = var.aqua_autoconnect_url
    organization_id                = var.management_group_id
    management_group_subscriptions = join(",", var.subscription_ids)
  }
}
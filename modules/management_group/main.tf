
resource "azurerm_management_group_template_deployment" "management_group_deployment" {
  name                = "aqua-agentless-scanner"
  location            = local.aqua_volscan_template_location
  management_group_id = "/providers/Microsoft.Management/managementGroups/${var.management_group_id}"
  template_content    = data.http.autoconnect_agentless_deployment_management_group_template.response_body
  parameters_content = jsonencode({
    "subscriptionIds" : {
      "value" = var.subscription_ids
    },
    "resourceGroupLocation" = {
      "value" = local.aqua_volscan_template_location
    },
    "scanLocations" = {
      "value" = var.aqua_volscan_scan_locations
    },
    "eventIngesterURL" = {
      "value" = var.aqua_volscan_api_url
    },
    "eventIngesterToken" = {
      "value" = var.aqua_volscan_api_token
    },
    "additionalResourceTags" = {
      "value" = var.aqua_custom_tags
    },
    "autoconnectURL" = {
      "value" = var.aqua_autoconnect_url
    },
    "cspmAPIURL" = {
      "value" = var.aqua_cspm_url
    },
    "apiKey" = {
      "value" = var.aqua_api_key
    },
    "apiSecret" = {
      "value" = var.aqua_api_secret
    },
    "cspmGroupId" = {
      "value" = var.aqua_cspm_group_id
    },
    "configurationId" = {
      "value" = var.aqua_configuration_id
    },
    "applicationId" = {
      "value" = var.application_id
    },
    "applicationPassword" = {
      "value" = var.application_password
    },
    "postInstallResourceTags" : {
      "value" = join(",", [for key, value in var.aqua_custom_tags : "${key}:${value}"])
    },
    "servicePrincipalId" = {
      "value" = var.service_principal_id
    },
    "aquaDeleteRoleDefinition" = {
      "value" = local.autoconnect_agentless_scanner_delete_role_definition
    },
    "aquaDeleteRoleName" = {
      "value" = local.aqua_agentless_delete_role_name
    },
    "resourceGroupName" = {
      "value" = var.aqua_volscan_resource_group_name
    },
    "systemTopicsName" = {
      "value" = var.aqua_system_topics_name
    },
    "eventSubscriptionsName" = {
      "value" = var.aqua_event_subscriptions_name
    },
    "networkSecurityGroupsNames" = {
      "value" = [for location in var.aqua_volscan_scan_locations :
        "${var.aqua_network_security_group_name}-${location}"
      ]
    },
    "virtualNetworkNames" = {
      "value" : [for location in var.aqua_volscan_scan_locations :
        "${var.aqua_virtual_network_name}-${location}"
      ]
    },
    "subnetsName" = {
      "value" = var.aqua_subnet_name
    },
    "resourceGroupNameVolScan" = {
      "value" = var.aqua_volscan_resource_group_name
    },
    "isCustomNameVolScan" = {
      "value" = local.is_custom_name_vol_scan
    }
  })
}


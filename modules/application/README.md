# `application` module

---

This Terraform module creates the Application resources.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.4 |
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | ~>2.47.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | ~>2.47.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuread_application.aqua_cspm_scanner](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application) | resource |
| [azuread_application_password.aqua_cspm_scanner](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_password) | resource |
| [azuread_service_principal.aqua_cspm_scanner](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_id"></a> [application\_id](#input\_application\_id) | Application ID - represented by the Service principal client ID associated with the application (in case that var.create\_service\_principal is false) | `string` | n/a | yes |
| <a name="input_application_name"></a> [application\_name](#input\_application\_name) | Application Name | `string` | n/a | yes |
| <a name="input_application_password"></a> [application\_password](#input\_application\_password) | Application password (in case that var.create\_service\_principal is false) | `string` | n/a | yes |
| <a name="input_create_service_principal"></a> [create\_service\_principal](#input\_create\_service\_principal) | Toggle to create service principal | `bool` | n/a | yes |
| <a name="input_service_principal_object_id"></a> [service\_principal\_object\_id](#input\_service\_principal\_object\_id) | Service principal object ID associated with the application (in case that var.create\_service\_principal is false) | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_application_id"></a> [application\_id](#output\_application\_id) | Application ID - represented by the Service principal client ID associated with the application |
| <a name="output_application_password"></a> [application\_password](#output\_application\_password) | Application password |
| <a name="output_service_principal_object_id"></a> [service\_principal\_object\_id](#output\_service\_principal\_object\_id) | Service principal object ID associated with the application |
<!-- END_TF_DOCS -->

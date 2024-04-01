# `application` module

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | 2.47.0 |

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
| <a name="application_name"></a> [application\_name](#application\_name) | Application Name | `string` | n/a | yes |
| <a name="application_password_name"></a> [application\_password\_name](#application\_password\_name) | Aqua Event Application Password Name | `string` | n/a | yes |
| <a name="application_password_end_date"></a> [application\_password\_end\_date](#application\_password\_end\_date) | Aqua Event Application End Date | `string` | n/a | yes |


## Outputs

| Name | Description |
|------|-------------|
| <a name="service_principal_id"></a> [service\_principal\_id](#service\_principal\_id) | Service principal ID associated with the application |
| <a name="application_id"></a> [application\_id](#application\_id) |  Application ID |
| <a name="application_password"></a> [application\_password](#application\_password) |  Application Password |
<!-- END_TF_DOCS -->

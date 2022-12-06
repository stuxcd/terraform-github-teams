# GitHub Teams Terraform module :japanese_ogre:

Terraform module which creates GitHub teams.

## Usage

```hcl
module "teams" {
  source = "github.com/stuxcd/terraform-github-teams"

  ## required
  teams = []
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_github"></a> [github](#requirement\_github) | >= 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | 5.11.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_team.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_teams"></a> [teams](#input\_teams) | A list of team maps for each team to create | `list(any)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_teams"></a> [teams](#output\_teams) | A list of GitHub teams and attributes |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

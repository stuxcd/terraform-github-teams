################################################################################
# TEAMS
################################################################################

locals {
  teams_length = length(var.teams)
  teams = merge(flatten([for i in range(local.teams_length) :
    { for entry in var.teams : format("%s.%s", lookup(entry, "name"), i) => entry }
  ])...)
  team_attributes = [for k, v in local.teams : {
    id          = github_team.this[k].id
    name        = github_team.this[k].name
    description = github_team.this[k].description
    permission  = lookup(v, "permission", "pull")
  }]
}

resource "github_team" "this" {
  for_each = local.teams

  name        = each.value.name
  description = each.value.description
}

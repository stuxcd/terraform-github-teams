################################################################################
# TEAMS
################################################################################

output "teams" {
  value       = local.team_attributes
  description = "A list of GitHub teams and attributes"
}

################################################################################
# TEAMS
################################################################################

output "teams" {
  value       = module.teams.teams
  description = "A list of GitHub teams and attributes"
}

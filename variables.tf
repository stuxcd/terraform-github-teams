################################################################################
# TEAMS
################################################################################

variable "teams" {
  description = "A list of team maps for each team to create"
  type        = list(any)
  default     = []
}

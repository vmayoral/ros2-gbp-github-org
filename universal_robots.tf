locals {
  universal_robots_team = [
    "fmauch",
    "t-schnell",
  ]
  universal_robots_repositories = [
    "Universal_Robots_Client_Library-release",
    "ur_description-release",
  ]
}

module "universal_robots_team" {
  source       = "./modules/release_team"
  team_name    = "universal_robots"
  members      = local.universal_robots_team
  repositories = local.universal_robots_repositories
}

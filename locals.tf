locals {
  # Generate names for the resources
  resource_group_name  = format("%s-%s-%s-RG-%03d", var.prj, local.region[lower(var.location)], local.env[lower(local.tags["Environment"])], var.instance)

  # Merge the required and optional tags (if supplied)
  tags = length(var.optional_tags) > 0 ? merge(var.required_tags, var.optional_tags) : var.required_tags


  ########
  #Static Mapping of ENV and Regions
  ########
  env = {
      "production" : "PRD"
      "preproduction" : "PPD"
      "development" : "DEV"
      "test" : "TST"
  }

  region = {
      "eastus" : "EUS"
      "eastus2" : "EUS2"
  }

}
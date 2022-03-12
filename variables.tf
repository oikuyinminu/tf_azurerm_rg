variable "location" {
  type        = string
  description = "Workplace Region"
}

variable "prj" {
  type        = string
  description = "Abbreviation for the type of project. Should be AA, AB, BB, BC, CC."
}


variable "required_tags" {
  description = "Optional - tags to apply on resource group"
  type = object({
    Environment       = string
    Deployment        = string
    Environment_Owner = string
    RepositoryURL     = string
    Infrastructure    = string
    Division          = string
    CostCentre        = string
  })
}

variable "optional_tags" {
    description = "(Optional) List of Additional tags to be applied to the Virtual Machine"
    type = map(string)
    default = {}
}

variable "instance" {
  description = "Instance number of the deployment. Default to 1."
  type        = number
  default     = 1
}
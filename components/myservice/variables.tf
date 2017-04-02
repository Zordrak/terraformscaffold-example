##
# Base
##

variable "project" {
  type        = "string"
  description = "The name of the project being deployed"
}

variable "environment" {
  type        = "string"
  description = "The name of the environment being deployed"
}

# The only variable value intentionally defined only within its declaration stanza
# as it is unique to the componenet, not to the environment
variable "component" {
  type        = "string"
  description = "The name of this component for use in naming and tagging"
  default     = "myservice"
}

variable "default_tags" {
  type        = "map"
  description = "The list of default tags to apply to all taggable resources"
  default     = {}
}

##
# Project Globals
##

variable "root_domain_name" {
  type        = "string"
  description = "The root domain name for MyService in the current environment"
}

##
# API-Specific
##

variable "api_subdomain_name" {
  type        = "string"
  description = "The name of the API subdomain for MyService in the current environment"
}

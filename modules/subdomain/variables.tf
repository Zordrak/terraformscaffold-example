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

variable "component" {
  type        = "string"
  description = "The name of the calling component for use in naming and tagging"
}

variable "default_tags" {
  type        = "map"
  description = "The list of default tags to apply to all taggable resources"
  default     = {}
}

##
# Module-Specific
##

variable "force_destroy" {
  type        = "string"
  description = "Whether to permit terraform to destroy the subdomain Route53 Zone"
}

variable "parent_domain_name" {
  type        = "string"
  description = "The domain name of the parent Route53 Zone"
}

variable "parent_zone_id" {
  type        = "string"
  description = "The Zone ID of the parent Route53 Zone"
}

variable "subdomain" {
  type        = "string"
  description = "The name of this subdomain"
}

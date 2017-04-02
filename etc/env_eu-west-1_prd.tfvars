##
# Scaffold Base
##

# For use in potential terraform_remote_state data sources
state_bucket = "theproject-terraformscaffold-012345678900-eu-west-1"

# For tagging, naming and other self-awareness

project = "theproject"

environment = "prd"

default_tags = {
  "Project"     = "theproject"
  "Environment" = "prd"
  "Client"      = "theclient"
  "CostCentre"  = "CC0123456"
}

##
# Project Globals
##

public_domain_name = "application.theclient.org"

##
# API-Specific
##

api_subdomain_name = "api"

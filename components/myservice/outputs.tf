# API Route53 Subdomain Zone ID
output "api_subdomain_zone_id" {
  value = "${module.subdomain_api.zone_id}"
}

# API Route53 Subdomain Computed FQDN
output "api_subdomain_fqdn" {
  value = "${module.subdomain_api.fqdn}"
}

# API Route53 Subdomain Delegation Set ID
output "api_subdomain_delegation_set_id" {
  value = "${module.subdomain_api.delegation_set_id}"
}

# API Route53 Subdomain Delegation Set Name Servers
output "name_servers" {
  value = [
    "${module.subdomain_api.name_servers}",
  ]
}

# Root Route53 Zone ID
output "root_zone_id" {
  value = "${aws_route53_zone.root.zone_id}"
}

# Root Route53 Delegation Set ID
output "root_delegation_set_id" {
  value = "${aws_route53_delegation_set.root.id}"
}

# Root Route53 Delegation Set Name Servers
output "root_name_servers" {
  value = [
    "${aws_route53_delegation_set.root.name_servers}",
  ]
}

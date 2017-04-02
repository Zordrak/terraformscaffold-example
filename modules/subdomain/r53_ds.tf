# The delegation set for the subdomain Route53 Zone
resource "aws_route53_delegation_set" "subdomain" {
  reference_name = "${format(
    "%s-%s-%s-%s.%s",
    var.project,
    var.environment,
    var.component,
    var.subdomain,
    var.parent_domain_name
  )}"
}

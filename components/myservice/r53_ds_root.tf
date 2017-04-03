# The Root Route53 Delegation Set
resource "aws_route53_delegation_set" "root" {
  reference_name = "${format(
    "%s-%s-%s-%s",
    var.project,
    var.environment,
    var.component,
    var.root_domain_name
  )}"
}

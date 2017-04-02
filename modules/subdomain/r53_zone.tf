# The subdomain Route53 Zone
resource "aws_route53_zone" "subdomain" {
  name              = "${var.subdomain}.${var.parent_domain_name}."
  comment           = "${var.subdomain} Subdomain of Hosted Zone ${var.parent_zone_id} ${var.parent_domain_name}"
  delegation_set_id = "${aws_route53_delegation_set.subdomain.id}"
  force_destroy     = "${var.force_destroy}"

  # Apply default tags, and merge with a map construction of additional tags
  tags = "${merge(
    var.default_tags,
    map(
      "Name", format(
        "%s-%s-%s-%s.%s",
        var.project,
        var.environment,
        var.component,
        var.subdomain,
        var.parent_domain_name
      ),
      "Component", var.component,
    )
  )}"
}

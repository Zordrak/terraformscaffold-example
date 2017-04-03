# The Root Route53 Zone
resource "aws_route53_zone" "root" {
  name              = "${var.root_domain_name}."
  comment           = "${var.project}-${var.environment}-${var.component} Root Zone"
  delegation_set_id = "${aws_route53_delegation_set.root.id}"
  force_destroy     = "${var.environment == "prd" ? "false" : "true" }"

  # Apply default tags, and merge with a map construction of additional tags
  tags = "${merge(
    var.default_tags,
    map(
      "Name", format(
        "%s-%s-%s-%s",
        var.project,
        var.environment,
        var.component,
        var.root_domain_name
      ),
      "Component", var.component,
    )
  )}"
}

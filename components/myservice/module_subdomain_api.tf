module "subdomain_api" {
  source             = "../../modules/subdomain"
  component          = "${var.component}"
  environment        = "${var.environment}"
  force_destroy      = "${var.environment == "prd" ? "false" : "true"}"
  parent_domain_name = "${var.root_domain_name}"
  parent_zone_id     = "${aws_route53_zone.root.zone_id}"
  project            = "${var.project}"
  subdomain          = "${var.api_subdomain_name}"
}

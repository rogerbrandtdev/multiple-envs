variable "name" {}
variable "cidr" {}
variable "provider_aws_region" {}

module "network" {
  source = "modules/network"

  name = "${var.name}"
  cidr = "${var.cidr}"
}

output "env"      { value = "${var.name}" }
output "vpc_cidr" { value = "${module.network.vpc_cidr}" }

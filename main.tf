variable "name" {}
variable "cidr" {}

module "network" {
  source = "modules/network"

  name = "${var.name}"
  cidr = "${var.cidr}"
}

output "env"      { value = "${var.name}" }
output "vpc_cidr" { value = "${module.network.vpc_cidr}" }

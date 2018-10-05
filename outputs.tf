output "admin_username" {
  description = "admin username"
  value       = "${module.dcos-private-agents-instances.admin_username}"
}

output "private_ips" {
  description = "List of private ip addresses created by this module"
  value       = ["${module.dcos-private-agents-instances.private_ips}"]
}

output "public_ips" {
  description = "List of public ip addresses created by this module"
  value       = ["${module.dcos-private-agents-instances.public_ips}"]
}

output "prereq_id" {
  description = "prereq id"
  value       = "${module.dcos-private-agents-instances.prereq_id}"
}

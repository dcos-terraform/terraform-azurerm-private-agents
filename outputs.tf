output "admin_username" {
  description = "SSH User"
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

output "instance_nic_ids" {
  description = "List of instance nic ids created by this module"
  value       = ["${module.dcos-private-agents-instances.instance_nic_ids}"]
}

output "ip_configuration_names" {
  description = "List of instance nic ids created by this module"
  value       = ["${module.dcos-private-agents-instances.ip_configuration_names}"]
}

output "prereq_id" {
  description = "Prereq id used for dependency"
  value       = "${module.dcos-private-agents-instances.prereq_id}"
}

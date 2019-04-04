/**
 * [![Build Status](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/job/dcos-terraform/job/terraform-azurerm-private-agents/job/master/badge/icon)](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/job/dcos-terraform/job/terraform-azurerm-private-agents/job/master/)
 * Azure DC/OS Private Agent Instances
 * ===================================
 *
 * This module creates typical private agent instances
 *
 * EXAMPLE
 * -------
 *
 *```hcl
 *module "dcos-private-agent-instances" {
 *  source  = "dcos-terraform/private-agents/azure"
 *  version = "~> 0.2.0"
 *
 *  subnet_id = "myid"
 *  security_group_ids = ["sg-12345678"]"
 *  public_ssh_key = "~/.ssh/id_rsa.pub"
 *
 *  num_private_agents = "2"
 *  ...
 *}
 *```
 */

provider "azurerm" {}

module "dcos-private-agents-instances" {
  source  = "dcos-terraform/instance/azurerm"
  version = "~> 0.2.0"

  providers = {
    azurerm = "azurerm"
  }

  num                       = "${var.num_private_agents}"
  location                  = "${var.location}"
  name_prefix               = "${var.name_prefix}"
  vm_size                   = "${var.vm_size}"
  dcos_version              = "${var.dcos_version}"
  dcos_instance_os          = "${var.dcos_instance_os}"
  ssh_private_key_filename  = "${var.ssh_private_key_filename}"
  image                     = "${var.image}"
  disk_type                 = "${var.disk_type}"
  disk_size                 = "${var.disk_size}"
  resource_group_name       = "${var.resource_group_name}"
  network_security_group_id = "${var.network_security_group_id}"
  custom_data               = "${var.custom_data}"
  admin_username            = "${var.admin_username}"
  ssh_public_key            = "${var.ssh_public_key}"
  tags                      = "${var.tags}"
  hostname_format           = "${var.hostname_format}"
  subnet_id                 = "${var.subnet_id}"
}

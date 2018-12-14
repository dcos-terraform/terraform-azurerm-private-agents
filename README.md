[![Build Status](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/job/dcos-terraform/job/terraform-azurerm-private-agents/job/master/badge/icon)](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/job/dcos-terraform/job/terraform-azurerm-private-agents/job/master/)
Azure DC/OS Private Agent Instances
===================================

This module creates typical private agent instances

EXAMPLE
-------

```hcl
module "dcos-private-agent-instances" {
 source  = "dcos-terraform/private-agents/azure"
 version = "~> 0.1.0"

 subnet_id = "myid"
 security_group_ids = ["sg-12345678"]"
 public_ssh_key = "~/.ssh/id_rsa.pub"

 num_private_agents = "2"
 ...
}
```


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| admin_username | SSH User | string | - | yes |
| allow_stopping_for_update | If true, allows Terraform to stop the instance to update its properties | string | `true` | no |
| custom_data | User data to be used on these instances (cloud-init) | string | `` | no |
| dcos_instance_os | Operating system to use. Instead of using your own AMI you could use a provided OS. | string | - | yes |
| dcos_version | Specifies which DC/OS version instruction to use. Options: 1.9.0, 1.8.8, etc. See dcos_download_path or dcos_version tree for a full list. | string | - | yes |
| disk_size | Disk Size in GB | string | - | yes |
| disk_type | Disk Type to Leverage | string | `Standard_LRS` | no |
| hostname_format | Format the hostname inputs are index+1, region, cluster_name | string | `pvtagt-%[1]d-%[2]s` | no |
| image | Source image to boot from | map | `<map>` | no |
| location | Azure Region | string | - | yes |
| name_prefix | Cluster Name | string | - | yes |
| network_security_group_id | Security Group Id | string | `` | no |
| num_private_agents | Specify the amount of private agents. These agents will provide your main resources | string | - | yes |
| resource_group_name | Name of the azure resource group | string | - | yes |
| ssh_private_key_filename | Path to the SSH private key | string | `/dev/null` | no |
| ssh_public_key | SSH public key in authorized keys format (e.g. 'ssh-rsa ..') to be used with the instances. Make sure you added this key to your ssh-agent. | string | - | yes |
| subnet_id | Subnet ID | string | - | yes |
| tags | Add custom tags to all resources | map | `<map>` | no |
| vm_size | Azure virtual machine size | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| admin_username | SSH User |
| prereq_id | Prereq id used for dependency |
| private_ips | List of private ip addresses created by this module |
| public_ips | List of public ip addresses created by this module |


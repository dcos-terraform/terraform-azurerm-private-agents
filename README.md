[![Build Status](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/buildStatus/icon?job=dcos-terraform%2Fterraform-azurerm-private-agents%2Fsupport%252F0.2.x)](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/job/dcos-terraform/job/terraform-azurerm-private-agents/job/support%252F0.2.x/)

Azure DC/OS Private Agent Instances
===================================

This module creates typical private agent instances

EXAMPLE
-------

```hcl
module "dcos-private-agent-instances" {
 source  = "dcos-terraform/private-agents/azure"
 version = "~> 0.2.0"

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
| admin\_username | SSH User | string | n/a | yes |
| cluster\_name | Name of the DC/OS cluster | string | n/a | yes |
| dcos\_instance\_os | Operating system to use. Instead of using your own AMI you could use a provided OS. | string | n/a | yes |
| location | Azure Region | string | n/a | yes |
| num\_private\_agents | Specify the amount of private agents. These agents will provide your main resources | string | n/a | yes |
| public\_ssh\_key | SSH Public Key | string | n/a | yes |
| resource\_group\_name | Name of the azure resource group | string | n/a | yes |
| subnet\_id | Subnet ID | string | n/a | yes |
| vm\_size | Azure virtual machine size | string | n/a | yes |
| allow\_stopping\_for\_update | If true, allows Terraform to stop the instance to update its properties | string | `"true"` | no |
| avset\_platform\_fault\_domain\_count | Availability set platform fault domain count, differs from location to location | string | `"3"` | no |
| custom\_data | User data to be used on these instances (cloud-init) | string | `""` | no |
| disk\_size | Disk Size in GB | string | `"120"` | no |
| disk\_type | Disk Type to Leverage | string | `"Standard_LRS"` | no |
| hostname\_format | Format the hostname inputs are index+1, region, cluster_name | string | `"pvtagt-%[1]d-%[2]s"` | no |
| image | Source image to boot from | map | `<map>` | no |
| name\_prefix | Name Prefix | string | `""` | no |
| network\_security\_group\_id | Security Group Id | string | `""` | no |
| ssh\_private\_key\_filename | Path to the SSH private key | string | `"/dev/null"` | no |
| tags | Add custom tags to all resources | map | `<map>` | no |

## Outputs

| Name | Description |
|------|-------------|
| admin\_username | SSH User |
| private\_ips | List of private ip addresses created by this module |
| public\_ips | List of public ip addresses created by this module |


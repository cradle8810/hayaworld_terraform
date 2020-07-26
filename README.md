# Terraform Template

## Prepare
Add file named `terraform.tfvars`

```
vsphere_user = "administrator@vsphere.local"
vsphere_password = "<vCenter Password>"
vsphere_server = "<vCenter IP>"
vsphere_datacenter = "Datacenter"
vsphere_datastore = "datastore1"
vsphere_resource_pool = "Cluster/"
vsphere_network = "VM Network"
vsphere_vm_template = "<Template Name>"
vsphere_vm_name = ""
vsphere_vm_cpus = "2"
vsphere_vm_memory_mb = "2048"
vsphere_vm_disk0_label = "disk0"
vsphere_vm_disk0_gb = "30"
```

## Do
`provider.vsphere` required to run.
Firstly, you need to fetch vsphere plugins. Run this command on terraform template folder.

```
terraform init
```

Move to the directory which Packer JSON template file located and runs following command.

```
terraform plan
terraform apply
```

## VM specs
- 2 vCPUs
- 2048 MB Memory(RAM)
- 30,000 MB Storage with Thin Provisioning

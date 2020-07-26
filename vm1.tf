##########################
# Decleare VMs 
##########################

resource "vsphere_virtual_machine" "cloned_vm1" {
  name             = "cloned_vm1"
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.datastore.id

  num_cpus = var.vsphere_vm_cpus
  memory   = var.vsphere_vm_memory_mb
  guest_id = "centos64Guest"

  network_interface {
    network_id = data.vsphere_network.network.id
  }

  disk {
    label = var.vsphere_vm_disk0_label
    size  = var.vsphere_vm_disk0_gb
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template.id
  }
}
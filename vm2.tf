##########################
# Decleare VMs 
##########################

resource "vsphere_virtual_machine" "cloned_vm2" {
  name             = "cloned_vm2"
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.datastore.id

  num_cpus = 4
  memory   = 4096
  guest_id = "centos64Guest"

  network_interface {
    network_id = data.vsphere_network.network.id
  }

  disk {
    label = var.vsphere_vm_disk0_label
    size  = 60
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template.id
  }
}
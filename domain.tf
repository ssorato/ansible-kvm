resource "libvirt_domain" "domain" {

  count = var.number_of_vms

  name = var.vm_name[count.index]

  memory = var.vm_memory[count.index]
  vcpu   = var.vm_vcpu[count.index]
  
  cloudinit = libvirt_cloudinit_disk.cloud-init[count.index].id

  network_interface {
    network_id     = libvirt_network.tf_net.id
    network_name   = "tf_net"
    addresses      = ["${var.net_prefix}.${var.IP_addr[count.index]}"]
    mac            = "${var.mac_prefix}:${var.IP_addr[count.index]}"
    wait_for_lease = true
  }

  console {
    target_type = "serial"
    type        = "pty"
    target_port = "0"
  }
  
  console {
    target_type = "virtio"
    type        = "pty"
    target_port = "1"
  }

  disk {
    volume_id = element(libvirt_volume.vm-boot-vol.*.id, count.index)
  }

  disk {
    volume_id = element(libvirt_volume.vm-data-vol.*.id, count.index)
  }

}


resource "libvirt_network" "tf_net" {
  name      = "tf_net"
  addresses = ["${var.net_prefix}.0/24"]
  dhcp {
    enabled = true
  }
  dns {
    enabled = true
  }
}


variable "domain" {
  description = "The domain/host name of the zone"
  default     = "mylab.br"
}

variable "number_of_vms" {
  description = "The number of VMs to create"
  default = 1
}

variable "vm_name" {
  description = "The VM name, that's the libvirt domain name"
  type        = list(string)
  default     = ["ubuntu-terraform"]
}

variable "ssh_port" {
  description = "The sshd port of the VM"
  default     = 22
}

variable "net_prefix" {
  description = "The VM network address will be net_prefix.0/24"
  default     = "192.168.123"
}

variable "IP_addr" {
  description = "Last byte about mac & iP address for this VM"
  type        = list(string)
  default     = ["11"]
}

variable "mac_prefix" {
  description = "MAC address prefix - last byte will be last ip byte"
  type        = string
  default     = "52:54:00:b2:2f"
}

variable "vm_memory" {
  description = "VM memory GB"
  type        = number
  default     = 2048
}

variable "vm_vcpu" {
  description = "VM vCPUs number"
  type        = number
  default     = 2
}

variable "source_img_url" {
  description = "The source image url"
  default     = "https://cloud-images.ubuntu.com/releases/focal/release/ubuntu-20.04-server-cloudimg-amd64.img"
}

variable "user_data" {
  description = "Yaml template with cloud configuration"
  default = "user-data-ubuntu.yml"
}

variable "vol_size" {
  description = "The boot volume size for this VM"
  # 10G
  default = 10 * 1024 * 1024 * 1024
}

variable "datavol_size" {
  description = "The data volume size for this VM"
  # 1G
  default = 1024 * 1024 * 1024
}

variable "ssh_public_key" {
  description = "SSH public key"
  default = "~/.ssh/id_rsa.pub"
}

variable "ssh_user" {
  description = "SSH user name"
  type        = string
  default     = "ssorato"
}

variable "os_img" {
  description = "OS image file"
  default = "focal-server-cloudimg-amd64.qcow2"
}

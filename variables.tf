variable "domain" {
  description = "The domain/host name of the zone"
  type        = string
  default     = "mylab.br"
}

variable "number_of_vms" {
  description = "The number of VMs to create"
  type        = number
  default = 1
}

variable "vm_name" {
  description = "The VM name, that's the libvirt domain name"
  type        = list(string)
  default     = ["ubuntu-terraform"]
}

variable "ssh_port" {
  description = "The sshd port of the VM"
  type        = number
  default     = 22
}

variable "net_prefix" {
  description = "The VM network address will be net_prefix.0/24"
  default     = "192.168.123"
}

variable "IP_addr" {
  description = "Last byte about mac & iP address for this VM"
  type        = list(number)
  default     = [11]
}

variable "mac_prefix" {
  description = "MAC address prefix - last byte will be last ip byte"
  type        = string
  default     = "52:54:00:b2:2f"
}

variable "vm_memory" {
  description = "The VM memory in MegaByte"
  type        = list(number)
  default     = [2048]
}

variable "vm_vcpu" {
  description = "VM vCPUs number"
  type        = list(number)
  default     = [2]
}

variable "source_img_url" {
  description = "The source image url"
  type        = string
  default     = "https://cloud-images.ubuntu.com/releases/focal/release/ubuntu-20.04-server-cloudimg-amd64.img"
}

variable "user_data" {
  description = "Yaml template with cloud configuration"
  type        = string
  default     = "user-data-ubuntu.yml"
}

variable "bootvol_size" {
  description = "VM boot volume size in GB"
  type        = list(number)
  # 10G
  default     = [10]
}

variable "datavol_size" {
  description = "VM data volume size in GB"
  type        = list(number)
  # 1G
  default     = [1]
}

variable "ssh_public_key" {
  description = "SSH public key"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

variable "ssh_user" {
  description = "SSH user name"
  type        = string
  default     = "ssorato"
}

variable "os_img" {
  description = "OS image file"
  type        = string
  default     = "focal-server-cloudimg-amd64.qcow2"
}

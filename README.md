# Provisioning VMs on KVM with terraform

[Terraform provider for libvirt](https://github.com/dmacvicar/terraform-provider-libvirt)

Example of _terraform.tfvars_

```
number_of_vms = 4
IP_addr       = ["61","62","63","64"]
vm_name       = ["k8s-master", "k8s-worker1", "k8s-worker2","k8s-storage"]
domain        = "localdomain.br"
user_data     = "user-data-ubuntu.yml"
ssh_user      = "ssorato"
```

# Provisioning VMs on KVM with terraform

[Terraform provider for libvirt](https://github.com/dmacvicar/terraform-provider-libvirt)

Example of _terraform.tfvars_

```
number_of_vms = 4
IP_addr       = ["61","62","63","64"]
vm_name       = ["k8s-master", "k8s-worker1", "k8s-worker2","k8s-storage"]
vm_vcpu       = [2,4,2]
vm_memory     = [2048,5120,2048]
bootvol_size  = [10,10,10]
datavol_size  = [1,1,1]
domain        = "localdomain.br"
user_data     = "user-data-ubuntu.yml"
ssh_user      = "ssorato"
```

## Issue on Ubuntu distro

[Permission Denied #546](https://github.com/dmacvicar/terraform-provider-libvirt/issues/546)

>>> On Ubuntu distros SELinux is enforced by qemu even if it is disabled globally, this might cause unexpected Could not open `/var/lib/libvirt/images/<FILE_NAME>`: Permission denied errors. Double check that `security_driver = "none"` is uncommented in `/etc/libvirt/qemu.conf` and issue `sudo systemctl restart libvirt-bin` to restart the daemon.


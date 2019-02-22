# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |cfg|
  cfg.vm.box = "generic/debian9"
  cfg.vm.box_version = "1.9.2"
  cfg.vm.provision :shell, path: "boot_install.sh"
  cfg.vm.provider "vmware_fusion" do |v, override|
    v.memory = 4096
    v.cpus = 2
    v.gui = false
  end
  cfg.vm.provider "virtualbox" do |v, override|
    v.memory = 4096
    v.cpus = 2
    v.gui = false
  end
end

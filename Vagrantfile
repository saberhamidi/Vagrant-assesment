# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "chad-thompson/ubuntu-trusty64-gui"
  config.vm.synced_folder "shared", "/tmp/shared"

  config.vm.define "VagrantMachineA" do |machineA|
    machineA.vm.hostname ="VagrantMachineA"
    machineA.vm.network "public_network", ip: "192.168.1.111"
    machineA.vm.provision "shell", path: "aScript.bash"
    machineA.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.memory = "1024"
      vb.name = "Vagrant-machine-A"
    end
  end
  config.vm.define "VagrantMachineB" do |machineB|
    machineB.vm.hostname ="VagrantMachineB"
    machineB.vm.network "public_network", ip: "192.168.1.11"
    machineB.vm.provision "shell", path: "bScript.bash"
    machineB.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.memory = "1024"
      vb.name = "Vagrant-mchine-B"
    end
  end
end


# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define "debian" do |debian|
    debian.vm.box = "debian-wheezy-64"
    debian.vm.box_url = "http://download.obm.org/debian-wheezy-64.box"
    debian.vm.hostname = "obm-Debian-Wheezy-vagrant"
    debian.vm.provision "ansible" do |ansible|
      ansible.playbook = "Debian/obm.yml"
      ansible.verbose = "extra"
    end
# debian.vm.network is needed if you access the virtual machine on eth1
#    debian.vm.network :public_network, :bridge => 'eth1'
  end

  config.vm.define "centos", primary: true do |centos|
    centos.vm.box = "centos64-x86_64"
    centos.vm.box_url = "http://download.obm.org/centos64-x86_64.box"
    centos.vm.hostname = "obm-CentOS7-vagrant"
    centos.vm.provision "ansible" do |ansible|
      ansible.playbook = "CentOS/obm.yml"
      ansible.verbose = "extra"
    end
    centos.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--memory", "1024"]
    end
# debian.vm.network is needed if you access the virtual machine on eth1
#    centos.vm.network :public_network, :bridge => 'eth1'
  end
end

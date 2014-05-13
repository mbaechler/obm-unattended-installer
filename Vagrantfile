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
#  debian.vm.network is needed if you access the virtual machine on eth1
    debian.vm.network :public_network, :bridge => 'eth1'
  end

  config.vm.define "docker" do |debian|
    debian.vm.hostname = "docker"
    debian.ssh.username = "root"
    debian.ssh.port = 22
    debian.vm.provider "docker" do |d|
      d.build_dir = "wheezy-docker"
      d.cmd = ["/sbin/init"]
      d.create_args = ["--dns", "10.69.255.254"]
      d.has_ssh = true
      d.ports = ["443:443"]
    end

    debian.vm.provision "file" do |f|
      f.source = "apt-preferences"
      f.destination= "/etc/apt/apt.conf"
    end

    debian.vm.provision "shell" do |shell|
      shell.privileged = false
      shell.inline = "apt-get update && apt-get install -y python-simplejson python-apt"
    end
    debian.vm.provision "ansible" do |ansible|
      ansible.playbook = "Debian/obm.yml"
      ansible.verbose = "extra"
    end
#  debian.vm.network is needed if you access the virtual machine on eth1
    debian.vm.network :public_network, :bridge => 'eth1'
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
#    centos.vm.network is needed if you access the virtual machine on eth1
    centos.vm.network :public_network, :bridge => 'eth1'
  end
end

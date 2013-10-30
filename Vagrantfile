# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian-wheezy-64"
  config.vm.box_url = "http://download.obm.org/debian-wheezy-64.box"
  config.vm.hostname = "obmvagrant"
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "obm.yml"
    ansible.verbose = "extra"
  end

  config.vm.network :public_network

end

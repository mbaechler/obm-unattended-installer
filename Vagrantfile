# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "base"
  config.vm.box_url = "https://dl.dropboxusercontent.com/u/197673519/debian-7.2.0.box"
  config.vm.hostname = "obmvagrant"
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "obm.yml"
    ansible.verbose = "extra"
  end

  config.vm.network :public_network

end

# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "scotch/box"
  config.vm.box_version = "1.5.0"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.synced_folder ".", "/home/vagrant/jekyll", type: "nfs"

end

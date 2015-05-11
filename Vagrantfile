# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  
  config.berkshelf.enabled = true
  config.berkshelf.berksfile_path = 'chef/cookbooks/task_tomcat/Berksfile'

  config.vm.network "private_network", ip: "10.255.255.11"

  config.vm.provision :chef_zero do |chef|
    chef.cookbooks_path = "chef/cookbooks"
    chef.roles_path = "chef/roles"
    chef.add_role "tomcat_sample"
  end
end

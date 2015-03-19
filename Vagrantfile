# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = '2'

Vagrant.require_version '>= 1.5.0'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	if Vagrant.has_plugin?("vagrant-omnibus")
		config.omnibus.chef_version = 'latest'
	end
	
	config.vm.hostname = 'prometheus-client-01'
	#config.vm.box = 'kraveio/centos-6.6'
	config.vm.box = 'chef/ubuntu-14.04'
	config.vm.network :private_network, type: 'dhcp'
	
	config.vm.provision :chef_solo do |chef|
		chef.json = {
			'go' => {
				'version' => '1.4.2'
			}
		}
		chef.run_list = [
			'recipe[apt]',
			'recipe[prometheus-exporter::machine]',
			'recipe[prometheus-exporter::haproxy]'
		]
	end

end


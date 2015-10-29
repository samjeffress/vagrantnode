# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.synced_folder "./", "/vagrant"
  config.vm.network "forwarded_port", guest: 1337, host: 1337



  if Vagrant.has_plugin?('vagrant-proxyconf')
    config.proxy.http = "http://10.0.2.2:3128/"
    config.proxy.https = "http://10.0.2.2:3128/"

    config.proxy.no_proxy = '"localhost, 127.0.0.*, 10.*, 192.168.*, gem.nib.com.au, nuget-local, nuget, npm, ntlvmbld01, vmprgp01"'
  else
    puts "vagrant-proxyconf missing, please install the vagrant-proxyconf plugin!"
    puts "Run this command in your terminal:"
    puts "vagrant plugin install vagrant-proxyconf"
    exit 1
  end

  config.vm.provision :shell, :path => "shell/provision.sh"
  config.vm.provision :shell, privileged: false,  :path => "shell/node_install.sh"
end

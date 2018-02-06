# -*- mode: ruby -*-
# vi: set ft=ruby :

required_plugins = ['vagrant-hostsupdater']
required_plugins.each do |plugin|
  exec "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin
end

Vagrant.configure("2") do |config|
  config.vm.define "app" do |app|
    app.vm.box = "ubuntu/xenial64"
    app.vm.network "private_network", ip: "192.168.10.150"
    app.hostsupdater.aliases = ["dev.local"]

    #synced app folder
    app.vm.synced_folder "app", "/app"
 end
  config.vm.define "db" do |db|
    db.vm.box = "ubuntu/xenial64"
    db.vm.network "private_network", ip: "192.168.10.151"
    db.hostsupdater.aliases = ["database.local"]
 end
end

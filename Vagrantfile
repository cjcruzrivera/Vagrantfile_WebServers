# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "web1" do |web1|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provider :virtualbox do |vb|
	vb.customize [ 'modifyvm', :id, '--name', 'web_1' ]
        vb.customize [ 'modifyvm', :id, '--memory', '720' ]
        vb.customize [ 'modifyvm', :id, '--cpus', '1' ]
        vb.customize [ 'modifyvm', :id, '--cpuexecutioncap', '50' ]
  config.vm.provision "shell", path:"script.sh"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.synced_folder "web_1", "/var/www/html"

  end
  config.vm.define "web2" do |web2|
  config.vm.provider :virtualbox do |vb|
  vb.customize [ 'modifyvm', :id, '--name', 'web_2' ]
        vb.customize [ 'modifyvm', :id, '--memory', '720' ]
        vb.customize [ 'modifyvm', :id, '--cpus', '1' ]
        vb.customize [ 'modifyvm', :id, '--cpuexecutioncap', '50' ]
  config.vm.provision "shell", path:"script.sh"
  config.vm.network "forwarded_port", guest: 80, host: 8008
  config.vm.synced_folder "web_2", "/var/www/html"

    db.vm.box = "base"
  end

end


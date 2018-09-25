# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "web1" do |web1|
      web1.vm.box = "ubuntu/trusty64"
      web1.vm.provider :virtualbox do |vb|
          vb.customize [ 'modifyvm', :id, '--name', 'web_1' ]
          vb.customize [ 'modifyvm', :id, '--memory', '720' ]
          vb.customize [ 'modifyvm', :id, '--cpus', '1' ]
          vb.customize [ 'modifyvm', :id, '--cpuexecutioncap', '50' ]
      end
      web1.vm.provision "shell", path:"script.sh"
      web1.vm.network "forwarded_port", guest: 80, host: 8080
      web1.vm.synced_folder "web_1", "/var/www/html"
  end
  config.vm.define "web2" do |web2|
        web2.vm.box = "ubuntu/trusty64"
        web2.vm.provider :virtualbox do |vb|
            vb.customize [ 'modifyvm', :id, '--name', 'web_2' ]
            vb.customize [ 'modifyvm', :id, '--memory', '720' ]
            vb.customize [ 'modifyvm', :id, '--cpus', '1' ]
            vb.customize [ 'modifyvm', :id, '--cpuexecutioncap', '50' ]
        end
        web2.vm.provision "shell", path:"script.sh"
        web2.vm.network "forwarded_port", guest: 80, host: 8008
        web2.vm.synced_folder "web_2", "/var/www/html"
  end
end
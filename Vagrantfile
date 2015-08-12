# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", 2048, "--cpus",   2, "--natdnshostresolver1", "on" ]
    vb.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/vagrant", "1"]
  end

  config.vm.provision "shell" do |s|
    s.privileged = true
    s.path = 'config/vm/bootstrap.sh'
  end

  config.vm.provision "shell" do |s|
    s.privileged = false
    s.path = 'config/vm/bootstrap_unpriv.sh'
  end
end

# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

CTRL_00_IP      = "172.16.9.100"

TERRAFORM_VERSION = "1.0.10"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "geerlingguy/ubuntu2004"
    config.vm.box_version = "1.0.3"
    config.vm.provider "virtualbox"
  
    # disable the default synced_folder and sync the root folder
    config.vm.synced_folder ".", "/vagrant", disabled: true
    config.vm.synced_folder "./", "/vagrant", privileged: true

    config.hostmanager.enabled = true
    config.hostmanager.manage_host = true

    boxes = [
        { :name => "myzsh",  :ip => CTRL_00_IP,  :cpus => 1,  :memory => 1024 }
    ]

  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true

  boxes.each do |opts|
    config.vm.define opts[:name] do |box|
      box.vm.hostname = opts[:name]
      box.vm.network :private_network, ip: opts[:ip]

      box.vm.provision "shell", inline: "cat /vagrant/keys/vagrant_id_rsa.pub >> /home/vagrant/.ssh/authorized_keys", privileged: false
      box.vm.provision "shell", inline: "echo 'cd /vagrant/' >> ~/.bashrc", privileged: false

      box.vm.provider "virtualbox" do |vb|
        vb.cpus = opts[:cpus]
        vb.memory = opts[:memory]

        vb.linked_clone = true

        vb.auto_nat_dns_proxy = false
        vb.customize ["modifyvm", :id, "--natdnsproxy1", "off"]
        vb.customize ["modifyvm", :id, "--natdnshostresolver1", "off"]
      end

      if opts[:name] == "myzsh"
        box.vm.provision "shell", inline: "cp /vagrant/keys/vagrant_id_rsa /tmp/id_rsa", privileged: false
        box.vm.provision "shell", inline: "chmod 600 /tmp/id_rsa", privileged: false

        box.vm.provision "shell", inline: <<-SHELL

          apt-get update -y && apt-get install -y python3.8-venv python3-pip jq unzip
          pip3 -q install ansible==2.10.7

        SHELL

      end

      box.vm.provision "all",       type:"shell", run: "never", inline: "cd /vagrant && ./provision/install-all.sh", privileged: false

      box.vm.provision "ohmyzsh",   type:"shell", run: "never", inline: "cd /vagrant && ./provision/install-zsh.sh", privileged: false

      box.vm.provision "other",     type:"shell", run: "never", inline: "cd /vagrant && ./provision/install-other-tools.sh", privileged: false


    end
  end
end
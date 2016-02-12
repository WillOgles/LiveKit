Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provider "virtualbox" do |v|
    v.name = "livekit"
    # v.memory = 1024
    # v.cpus = 2
  end
  config.vm.provision :shell, path: "vagrant-bootstrap.sh"
  config.vm.network "private_network", ip: "192.168.50.4"
  # config.vm.network :forwarded_port, guest: 80, host: 8080
  # config.vm.network "private_network", type: "dhcp"
  config.vm.hostname = "livekit"
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  # config.hostmanager.manage_guest = true
  # config.hostmanager.ignore_private_ip = false
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder ".", "/livekit"
end

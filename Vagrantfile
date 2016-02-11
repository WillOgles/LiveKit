Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provider "virtualbox" do |v|
    v.name = "livekit"
    # v.memory = 1024
    # v.cpus = 2
  end
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.network "private_network", ip: "192.168.50.4"
  config.vm.hostname = "livekit"
  # config.vm.synced_folder ".", "/var/www", :mount_options => ["dmode=777", "fmode=666"]
end

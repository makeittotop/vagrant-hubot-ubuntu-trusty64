Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname="hubot-dev"

  config.vm.provision "shell", { :path => "provision.sh" }

  config.vm.network "private_network", ip: "172.16.15.219"
  
end

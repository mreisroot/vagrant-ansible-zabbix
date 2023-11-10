Vagrant.configure("2") do |config|

  # Definir provider e alocar recursos
  config.vm.provider "virtualbox" do |vb|
    vb.name = "venus"
    vb.cpus = 1
    vb.memory = 1024
    vb.gui = false
  end

  # Definir SO, hostname e redes
  config.vm.box = "debian/bullseye64"
  config.vm.hostname = "venus"
  config.vm.network "private_network", ip: "192.168.56.2"

  # Script de pré-requisitos do ansible
  config.vm.provision "shell", path: "provision.sh"

  # Compartilhar a pasta ansible com o sistema convidado
  config.vm.synced_folder "ansible", "/ansible"

  # Provisionar a VM
  config.vm.provision "ansible_local" do |ansible|
    ansible.install_mode = "pip"
    ansible.version = "2.10.7"
    ansible.provisioning_path = "/ansible"
    ansible.playbook = "playbook.yml"
  end

end

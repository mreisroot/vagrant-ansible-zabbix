Vagrant.configure("2") do |config|

  # Define provider and allocate resources
  config.vm.provider "virtualbox" do |vb|
    vb.name = "venus"
    vb.cpus = 1
    vb.memory = 1024
    vb.gui = false
  end

  # Define OS, hostname and networking
  config.vm.box = "debian/bullseye64"
  config.vm.hostname = "venus"
  config.vm.network "private_network", ip: "192.168.56.2"

  # Install Python3
  config.vm.provision "shell", inline:<<-'EOF'
    apt update
    apt install -y python3
  EOF

  # Share the ansible folder with the guest
  config.vm.synced_folder "ansible", "/ansible"

  # Set the default python interpreter for ansible as python3
  config.vm.provision "shell", inline:<<-'EOF'
    mkdir /etc/ansible
    echo -e "[defaults]\ninterpreter_python = auto" > /etc/ansible/ansible.cfg
  EOF

  # Provision the VM
  config.vm.provision "ansible_local" do |ansible|
    ansible.install_mode = "pip"
    ansible.version = "2.10.7"
    ansible.provisioning_path = "/ansible"
    ansible.playbook = "playbook.yml"
  end

end

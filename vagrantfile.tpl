Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |vb|
  vb.memory = 1024

  config.vm.provider "vmware_fusion" do |vf|
  vf.vmx["memsize"] = "1024"
end
end
end

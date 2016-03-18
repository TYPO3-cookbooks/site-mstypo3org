#
# Cookbook Name:: site-mstypo3org
# Recipe:: openvz
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe "#{cookbook_name}::_common"

include_recipe "t3-kvm"

#################################
# Virt-installer (create new VMs)
#################################
virt_path = "/usr/local/virtinstaller"

git virt_path do
  repository "https://github.com/TYPO3-infrastructure/virtinstaller"
end

%w{virt-install-debian}.each do |script|
  link "/usr/local/bin/#{script}" do
    to File.join(virt_path, script)
  end
end

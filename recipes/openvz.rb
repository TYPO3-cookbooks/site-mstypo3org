#
# Cookbook Name:: site-mstypo3org
# Recipe:: openvz
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe "#{cookbook_name}::_common"

include_recipe "t3-openvz::host"
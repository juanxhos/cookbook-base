#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "base::selinux"

include_recipe "base::firewall"

include_recipe "base::pam"

include_recipe "base::sysctl"

include_recipe "base::repo"

include_recipe "base::packages"

execute "reboot" do
  command "sudo shutdown -r 2 &"
end
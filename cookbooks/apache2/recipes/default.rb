#
# Cookbook Name:: apache2
# Recipe:: default
#
# Copyright (c) 2018 The Authors, All Rights Reserved.

#node.default[:apache_port] = 9090

package 'install apache' do
    package_name 'apache2'
end

service 'apache2' do
    action [:enable, :start]
end

#cookbook_file '/etc/apache2/ports.conf' do
#	source 'ports.conf'
#end

#cookbook_file '/etc/apache2/sites-enabled/000-default' do
#	source '000-default'
#end

log "value is #{node['apache_port']}"
template '/etc/apache2/ports.conf' do
	source 'ports.conf.erb'
end

template '/etc/apache2/sites-enabled/000-default' do
	source '000-default.erb'
end

include_recipe 'apache2::restart'

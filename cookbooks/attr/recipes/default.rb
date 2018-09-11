#
# Cookbook Name:: attr
# Recipe:: default
#
# Copyright (c) 2018 The Authors, All Rights Reserved.

search('login','*:*').each do | user_data|
	log "#{user_data['id']}"
end
#node.default['apache_port'] = 8888
#node.normal['apache_port'] = 8080
node.default['apache_port'] = 9999

log "ipaddress is #{node[:ipaddress]}"
log "apache_port is #{node[:apache_port]}"

node.default['var1'] = 10
log "var1 is #{node[:var1]}"


#
# Cookbook Name:: users
# Recipe:: default
#
# Copyright 2018, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
search('logins', '*:*').each do |user_data|
	user "#{user_data['id']}" do
        	home "#{user_data['home']}"
	        shell "#{user_data['shell']}"
        	password 'WwEB5jzJW3tDc'
	end

	directory "#{user_data['home']}" do
        	owner "#{user_data['id']}"
	        group "#{user_data['id']}"
        	mode '0755'
	end
end

#user 'user1' do
#	home '/home/user1'
#	shell '/bin/bash'
#	password 'WwEB5jzJW3tDc'
#end

#directory '/home/user1' do
#	owner 'user1'
#	group 'user1'
#	mode '0755'
#end

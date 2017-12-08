#
# Cookbook:: demo1
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'httpd' do
	action :install
end

service 'httpd' do
	action :start
end

file '/var/www/html/index.html' do
	action :create
	content "<html><body><h1>Welcome to chef world..!!!!</h1></body></html>
end

#
# Cookbook:: demo5
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.


package_name ="apache2"
service_name ="apache2"
documentation ="/var/www/html"

if node["plateform"] =="centos"
	package_name ="httpd"
	service_name ="httpd"
	document_root ="/var/www/html"
elsif
	node["plateform"] =="amazon"
		package_name ="httpd"
	        service_name ="httpd"
        	document_root ="/var/www/html"
end
	package package_name do
		action :install
	end
		
	service service_name do
		action [:enable, :start]
	end
template "#{document_root}/index.html" do
	sourece "index.html.erb"
end


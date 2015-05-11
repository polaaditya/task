#
# Cookbook Name:: task_tomcat
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
remote_file "/var/lib/tomcat7/webapps/sample.war" do
  source "https://tomcat.apache.org/tomcat-6.0-doc/appdev/sample/sample.war"
  notifies :restart, "service[tomcat7]"
end

service "tomcat7"


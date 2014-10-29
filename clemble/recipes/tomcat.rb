# Installs default version of Tomcat with Java 7 openJDK
# include_recipe 'opsworks_java::tomcat_install'
# Install latest version of Java
# include_recipe 'java::oracle'
# Configure container to use latest version of tomcat
# include_recipe 'opsworks_java::tomcat_container_config'
# Install tomcat service
# include_recipe 'opsworks_java::tomcat_service'

service 'tomcat' do
  action :enable
end

# for EBS-backed instances we rely on autofs
bash '(re-)start autofs earlier' do
  user 'root'
  code <<-EOC
    service autofs restart
  EOC
  notifies :restart, 'service[tomcat]'
end

# The rest is copy from AWS OpsWorks CookBooks
# include_recipe 'apache2'
# include_recipe 'opsworks_java::apache_tomcat_bind'

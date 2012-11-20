gem_package "passenger" do
action :install
end

package "libcurl4-openssl-dev"
package "apache2-mpm-prefork"
package "apache2-prefork-dev"
package "libapr1-dev"
package "libaprutil1-dev"

bash "Extract and install apache2" do
user "root"
code <<-EOH
sudo passenger-install-apache2-module --auto
echo "LoadModule passenger_module /var/lib/gems/1.9.1/gems/passenger-3.0.18/ext/apache2/mod_passenger.so" >> /etc/apache2/apache2.conf
echo "PassengerRoot /var/lib/gems/1.9.1/gems/passenger-3.0.18" >> /etc/apache2/apache2.conf
echo "PassengerRuby /usr/bin/ruby1.9.1" >> /etc/apache2/apache2.conf
EOH
end

service "apache2" do
  service_name "apache2"
  supports :restart => true, :status => true, :reload => true
end

template "/etc/apache2/sites-available/raster-stats" do
source "raster-stats.erb"
mode 0600
notifies :restart, resources(:service => "apache2"), :immediately
end


bash "Set site as active" do
user"root"
code <<-EOH
cd /etc/apache2/sites-enabled
ln -s /etc/apache2/sites-available/raster-stats raster-stats
EOH
end



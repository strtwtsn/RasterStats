package "git"

gem_package "bundle" do
action :install
end

gem_package "bundler" do
action :install
end


bash "Download and install raster-stats" do
user "root"
cwd "/usr/local/src"
code <<-EOH
git clone git://github.com/unepwcmc/raster-stats
cd /usr/local/src/raster-stats
bundle install
sudo bash -c 'echo "include /usr/local/lib/" >> /etc/ld.so.conf'
sudo ldconfig
EOH
end


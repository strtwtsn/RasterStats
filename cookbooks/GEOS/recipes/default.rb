remoate_file "/usr/local/src/geos-3.2.2.tar.bz2" do
source "http://download.osgeo.org/geos/geos-3.2.2.tar.bz2"
end

bash "Extract and install GEOS" do
user "root"
cwd "/usr/local/src"
code <<-EOH
tar xvf geos-3.2.2.tar.bz2
cd geos-3.2.2
./configure
make
make install
EOH
end


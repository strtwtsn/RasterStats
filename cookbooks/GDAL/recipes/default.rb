package "unzip"

remote_file "/usr/local/src/gdal192.zip" do
source "http://download.osgeo.org/gdal/gdal192.zip"
end

bash "Extract and install GDAL" do
user "root"
cwd "/usr/local/src"
code <<-EOH
unzip gdal192.zip
cd gdal-1.9.2
./configure
make
make install
EOH
end


package "unzip"

remote_file "/usr/local/src/gdal190.zip" do
source "http://download.osgeo.org/gdal/gdal190.zip"
end

bash "Extract and install GDAL" do
user "root"
cwd "/usr/local/src"
code <<-EOH
unzip gdal190.zip
cd gdal-1.9.0
./configure
make
make install
EOH
end


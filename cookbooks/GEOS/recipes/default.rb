package "subversion" do
  action :install
end

package "autoconf" do
  action :install
end

package "libtool" do
 action :install
end



# Checkout GEOS and install

bash "Checkout GEOS and Install" do
user "root"
code <<-EOH
svn checkout http://svn.osgeo.org/geos/branches/3.2 /usr/local/src/GEOS
cd /usr/local/src/GEOS
./autogen.sh
./configure
make
make install
EOH
end


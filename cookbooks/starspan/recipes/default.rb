package "git-core"

bash "Download and install starspan" do
user "root"
cwd "/usr/local/src"
code <<-EOH
git clone git://github.com/Ecotrust/starspan.git
cd /usr/local/src/starspan
./configure 
make 
make install
EOH
end


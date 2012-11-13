#!/bin/bash
sudo apt-get -y update 
sudo apt-get -y install ruby1.9.1 ruby1.9.1-dev rubygems1.9.1 irb1.9.1 ri1.9.1 rdoc1.9.1 build-essential libopenssl-ruby1.9.1 libssl-dev zlib1g-dev git
gem install chef ruby-shadow --no-ri --no-rdoc
sudo git clone https://github.com/strtwtsn/RasterStats.git /var/chef
sudo chef-solo -c /var/chef/config/chef-solo.rb -j /var/chef/roles/starspan.json

## **What is it?** ##

Chef script for installing raster-stats on a Ubuntu 10.04 LTS instance.  This has been tested on an ami-534a4b27 EC2 EBS instance

More info on Raster-Stats here:-

https://github.com/unepwcmc/raster-stats


## **What does it install?** ##

GDAL 1.9.2,
GEOS 3.2.4,
Ruby 1.9.3,
StarSpan and 
Rasterstats

## **How do I start the install?** ##

Download rasterstats.sh from 

https://raw.github.com/strtwtsn/RasterStats/master/rasterstats.sh

and execute it.  This will install Ruby 1.9.3, and clone the RasterStats chef cookbook install and begin the install.

## **What do I do after the install?** ##

The cookbook installs apache2.  You will need to change the server name in the /etc/apache2/sites-available/raster-stats file.





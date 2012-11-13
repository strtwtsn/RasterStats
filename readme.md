## **What is it?** ##

Chef script for installing raster-stats on a Ubuntu 12.04 LTS instance.

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

shotgun -o <hostname of server> config.ru


It is important that this get's executed from the location where you downloaded rasterstats to.

If you used the script then this will be

/usr/local/src/rasterstats/shotgun -o config.ru


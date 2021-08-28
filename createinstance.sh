#!/bin/bash
mkdir $1
cd $1
ln -s ../base/bin bin
ln -s ../base/hl2 hl2
ln -s ../base/platform platform
ln -s ../base/srcds_linux srcds_linux
ln -s ../base/srcds_run srcds_run
ln -s ../base/steamapps steamapps
ln -s ../base/thirdpartylegalnotices.txt thirdpartylegalnotices.txt
mkdir tf
cd tf
ln -s ../../base/tf/addons addons
ln -s ../../base/tf/bin bin
mkdir cfg
ln -s ../../base/tf/custom custom
ln -s ../../base/tf/download download
ln -s ../../base/tf/gameinfo.txt gameinfo.txt
ln -s ../../base/tf/maps maps
ln -s ../../base/tf/materials materials
ln -s ../../base/tf/media media
ln -s ../../base/tf/resource resource
ln -s ../../base/tf/scripts scripts
ln -s ../../base/tf/steam.inf steam.inf
for v in ../../base/tf/*.vpk*; do
	ln -s $v $(basename $v)
done
ln -s ../../base/tf/workshop workshop
cd ..
# Global configuration files
ln ../base/tf/cfg/global.cfg tf/cfg/global.cfg
ln -s ../base/launch.sh launch.sh
cd ..

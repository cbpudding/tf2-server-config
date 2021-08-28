#!/bin/bash
cd $1/tf/cfg
unlink global.cfg
cd ..
rm -r cfg
for l in *; do
	unlink $l
done
cd ..
rm -r tf
for l in *; do
	unlink $l
done
cd ..
rm -r $1

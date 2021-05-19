#!/bin/bash

if [ -s ~/.snakep ]
then
	rm -rf ~/.snakep
fi

mkdir ~/.snakep
cp -r snake/* ~/.snakep
cp -r snake/.gitignore ~/.snakep

if [ -s ~/.snakep_commonds ]
then
		rm -rf ~/.snakep_commonds
fi
cp  .snakep_commonds ~


if [ -s /usr/bin/snakep ]
then
	sudo rm /usr/bin/snakep
fi
sudo cp snakep /usr/bin

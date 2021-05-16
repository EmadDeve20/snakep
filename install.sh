#!/bin/bash

if [ -f ~/.snakep ]
then
	rm -rf ~/.snakep
fi
cp -r .snakep ~

if [ -f /usr/bin/snakep ]
then
	sudo rm /usr/bin/snakep
fi
sudo cp snakep /usr/bin

#!/bin/bash

sample_folder_creator(){
	# creat sample python repository
	# and license repository
	if [ -s ~/.snakep ]
	then
		rm -rf ~/.snakep
	fi

	mkdir ~/.snakep
	cp -r snake/* ~/.snakep
	cp -r snake/.gitignore ~/.snakep
	mv ~/.snakep/src/__init__.py.sample ~/.snakep/src/__init__.py
	mv ~/.snakep/test/__init__.py.sample ~/.snakep/test/__init__.py
	mv ~/.snakep/setup.py.sample ~/.snakep/setup.py
	
	if [ -s ~/.licenses ]
	then
		rm -rf ~/.licenses
	fi
}

licenses_repository_creator(){
	cp -r licenses ~
	mv ~/licenses ~/.licenses
}

commonds_creator(){
	# creat commands for your python project
	if [ -s ~/.snakep_commonds ]
	then
		rm -rf ~/.snakep_commonds
	fi
	cp  .snakep_commonds ~
}

snakep_commond_bash(){
	if [ -s /usr/bin/snakep ]
	then
		sudo rm /usr/bin/snakep
	fi
	sudo cp ./snakep /usr/bin
}

sample_folder_creator
licenses_repository_creator
commonds_creator
snakep_commond_bash

#!/bin/bash

sample_folder_creator(){
	# creat sample python repository
	if [ -d ~/.snakep ]
	then
		read -p ""~/.snakep" exist! can i remove it and i recreate it?[Y/n]" answer
		if [[ $answer = "n" || $answer = "N" ]]
		then
			exit 0
		else
			rm -rf ~/.snakep
		fi
		
	fi

	mkdir ~/.snakep
	cp -r snake/* ~/.snakep
	cp -r snake/.gitignore ~/.snakep
	mv ~/.snakep/src/__init__.py.sample ~/.snakep/src/__init__.py
	mv ~/.snakep/test/__init__.py.sample ~/.snakep/test/__init__.py
	mv ~/.snakep/setup.py.sample ~/.snakep/setup.py
	
}

licenses_repository_creator(){
	#creator for license repository

	if [ -d ~/.licenses ]
	then
		read -p ""~/.licenses" exist! can i remove it and i recreate it?[Y/n]" answer
		if [[ $answer = "n" || $answer = "N" ]]
		then
			exit 0
		else
			rm -rf ~/.licenses
		fi
	fi

	cp -r licenses ~
	mv ~/licenses ~/.licenses
}

commonds_creator(){
	# creat commands for your python project
	if [ -s ~/.snakep_commonds ]
	then
		read -p ""~/.snakep_commonds" exist! can i remove it and i recreate it?[y/N]" answer
		if [[ $answer = "\n" || $answer = "n" || $answer = "N" ]]
		then
			exit 0
		else
			rm ~/.snakep_commonds
		fi
	fi
	cp  .snakep_commonds ~
}

snakep(){
	#creator for snakep command on your system
	if [ -s /usr/bin/snakep ]
	then
		sudo rm /usr/bin/snakep
	fi
	sudo cp ./snakep /usr/bin
}

sample_folder_creator
licenses_repository_creator
commonds_creator
snakep

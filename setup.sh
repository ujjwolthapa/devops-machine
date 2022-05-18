#!/bin/bash
echo "setup and configure server"

file_name=config.yaml

config_dir=$1

if [ -d "$config_dir" ]
then
	echo "reading config dirctory"
	config_files=$(ls "$config_dir")
else
	echo "cofig dir doesnt found and creating config dir"
	mkdir "$config_dir"
	touch "$config_dir/config.sh"
fi
user_group=$2
if [ "$user_group" == "bromx" ]
then
	echo "configure the server"
elif [ "$user_group" == "admin" ]
then
	echo "administer the server"
else
	echo "No permission to configure server. wrong user group" 
fi


echo "using file: $file_name"
echo "here are all config files listed in config dir:$config_files "


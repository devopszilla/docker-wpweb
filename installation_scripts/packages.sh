#!/usr/bin/env bash
# This script contains all the essesntial packages which will be required for running LEMP + Wordpress

source ./env_vars.sh
apt-get update
apt-get upgrade -y 

packages_to_install="nginx  mysql-server-5.7 php-curl php-gd php-mbstring php-xml php-xmlrpc wget tar"
apt-get -y install ${packages_to_install}
if [[ $? == 0 ]];then
	echo -e "Following Packages has been installed..\n ${packages_to_install}"
fi


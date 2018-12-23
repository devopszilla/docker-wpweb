#!/usr/bin/env bash
source ./env_vars.sh

wp_source_url="https://wordpress.org/latest.tar.gz"
target_file_name="wp_latest.tar.gz"
cd ${wordpress_doc_root}
if [[ $? != 0 ]];then
	echo "Unable to switch to the document root ${wordpress_doc_root}. Please check if the directory exist. "
	exit 0
fi
wget ${wp_source_url} -O ${target_file_name}
tar -zxvf ${target_file_name}
rm -f ${target_file_name}


#!/usr/bin/env bash
# It contains some ENV vars which can be used in other scripts.

username=$(whoami)
base_dir=$(cd $(dirname $(readlink -f $0)) && git rev-parse --show-toplevel)
install_scripts_dir="${base_dir}/installation_scripts"
config_files_dir="${base_dir}/config_files"
wordpress_doc_root="${base_dir}/doc_root"

#!/bin/sh
#
# apt-get update downloader script for cron automatization
# This script is released under the BSD 3-Clause License.

echo
echo "############################"
echo "Starting apt-get-autoupdater"
date
echo
apt-get clean
apt-get autoclean
apt-get update
apt-get --fix-broken install
apt-get --download-only --yes upgrade # El yes sirve para que escriba yes cuando salga el prompt y asi evitar que se quede parado
apt-get autoremove
exit 0

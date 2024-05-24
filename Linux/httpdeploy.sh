#!/bin/bash


#VARIABLE DECLARATION


PACKAGE="wget unzip httpd"
dir="/tmp/webfiles"
svc="httpd"
#url="https://www.tooplate.com/zip-templates/2132_clean_work.zip"
url=$1
art_name=$2
#art_name="2132_clean_work"
#installing dependencies
echo "installing dependencies"
sudo yum install $PACKAGE -y > /dev/null

echo "======================DONE 1============================="


#creating directory for website
echo "creating directory for website"
mkdir -p $dir
cd $dir

echo "======================DONE 2============================="

#DOWNLOADING SOURCE FILE
echo "DOWNLOADING SOURCE FILE"
wget $url > /dev/null
unzip $art_name.zip > /dev/null
sudo cp -r $art_name/* /var/www/html/

echo "======================DONE 3============================="


#RESTARTING HTTP SERVER
echo "RESTARTING HTTP SERVER"
systemctl restart $svc > /dev/null
echo "======================DONE 4============================="
rm -rf $dir

echo "       "

sudo systemctl status $svc

ls /var/www/html/

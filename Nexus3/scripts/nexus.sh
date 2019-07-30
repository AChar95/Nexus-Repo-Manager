#!/bin/bash

echo "***************************** installing of prerequisites ***************************************"
sudo apt install openjdk-8-jdk
echo "***************************** downloading latest version of Nexus ***************************************"
wget https://download.sonatype.com/nexus/3/latest-unix.tar.gz
echo "***************************** unpacking nexus.tar.gz file  ***************************************"
tar -xvf latest-unix.tar.gz
/nexus-3.18.0-01-unix/bin/nexus run
echo ">> Once this is complete, please see the nexus installation file called nexus-install.txt"

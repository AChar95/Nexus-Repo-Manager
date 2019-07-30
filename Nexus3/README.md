# Nexus Repository manager

## 1. Structure

An overview of this folder is fairly straight-forward:
1. scripts folder - this contains the installation script and script which will run the service
2. 
3. images folder - this contains any images used here 

## 2. Prerequisites

The Nexus repository manager requires java 8 to be installed, for debian based distributions:
```script
sudo apt install openjdk-8-jdk
```
this version of java is bundled with everything you need to develop java application

## 3. Installation

Inital set up, if you are using a debian-based linux distribution such as ubuntu, the nexus.sh will install and deploy the nexus manager. If you wish to download the file from [Sonatype](https://help.sonatype.com/repomanager3/download "Nexus 3 latest download"). This is free to download and is available for the Unix systems, Windows and MacOs.
The main download for each distribution is compressed using each platform's prefered method. To unpack for linux:
```script
tar -xvf latest-unix.tar.gz
```
This will unpack the download to the two separate folders one named "nexus-3.x.x-x-unix" and another called the working directory.


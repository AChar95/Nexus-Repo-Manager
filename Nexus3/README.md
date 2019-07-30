# Nexus Repository manager

This guide is designed for linux distributions.

## 1. Structure

An overview of this folder is fairly straight-forward:
1. scripts folder - this contains the installation script and script which will run the service
2. tutorials - this will contain txt files for the different repositories 
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
tar -xvzf latest-unix.tar.gz
```
This will unpack the download to the two separate folders one named "nexus-3.x.x-x-unix" and another called the "sonatype-work" directory. 
Navigate inside the "nexus-3.x.x-x" and into the **bin** folder run the nexus file.
```script
./nexus run
```
The installation will commence, and will be complete once "Started Sonatype Nexus" appears.

## 4. Operation

### 4.1 Access to GUI

To access the nexus GUI, use [your-ip-address]:8081, if the Nexus is being run locally then localhost:8081 can be used.

### 4.2 Creating Admin account

In order to create or edit any repositories initially, an admin account will be required. When prompted to, the default admin password will be found in **sonartype-work/nexus3**, it is saved as admin.password. Once logged in, Nexus Repository Manager will prompt to change the password, this is recommended as it can be difficult to remember the default password, this will be required for logins in order to push to the repository.

## 5. Links

### 5.1 Running as a service

The [nexus.service](./scripts/nexus.service) is an example of how to set up the Nexus repository as a service, obviously the version will require altering to the most current version. Copy the nexus.service file to the following directory /etc/systemd/system/, following this run the following commands in order to enable this:
```script
sudo systemctl daemon-reload
sudo systemctl enable nexus.service
sudo systemctl start nexus.service
```

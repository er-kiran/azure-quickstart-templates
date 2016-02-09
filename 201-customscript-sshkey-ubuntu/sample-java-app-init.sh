#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

apt-get -y -q install software-properties-common htop

# add oracle java8 repo
add-apt-repository -y ppa:webupd8team/java

sudo apt-get -yq update

echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections

apt-get -y -q install oracle-java8-installer

update-java-alternatives -s java-8-oracle

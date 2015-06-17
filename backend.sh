#!/bin/bash
sudo killall docker
sudo -b docker -d -H unix:///var/run/docker.sock -H tcp://127.0.0.1:2375 --insecure-registry 172.0.0.0/8 


BACK_TO=`pwd`
FABRIC8_HOME=/tmp/${RANDOM}
mkdir $FABRIC8_HOME
cd $FABRIC8_HOME
bash <(curl -sSL https://bit.ly/get-fabric8) -f
cd $BACK_TO


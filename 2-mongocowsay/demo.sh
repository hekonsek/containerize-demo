#!/bin/bash

echo EXECUTING: docker build -t henry.k/cowsay:1.0 .
read
docker build -t henry.k/cowsay:1.0 .

echo
echo
echo
echo "EXECUTING: docker run -t henry.k/cowsay:1.0"
read
docker run -t henry.k/cowsay:1.0 

echo
echo
echo
echo "About to log-into the OpenShift:"
osc login

echo
echo
echo
echo "EXECUTING: osc new-app --docker-image=henry.k/cowsay:1.0"
read
osc new-app --docker-image=henry.k/cowsay:1.0

echo
echo
echo
echo "EXECUTING: osc new-app mongo"
read
osc new-app mongo

echo
echo
echo
echo "EXECUTING: docker build -t henry.k/new-cowsay:1.0 ."
read
docker build -t henry.k/new-cowsay:1.0 .

echo
echo
echo
echo "EXECUTING: osc new-app --docker-image=henry.k/new-cowsay:1.0"
read
osc new-app --docker-image=henry.k/new-cowsay:1.0


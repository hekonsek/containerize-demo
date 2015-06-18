#!/bin/bash

echo EXECUTING: docker build -t henry.k/cowsay:1.0 .
read
docker build -t henry.k/cowsay:1.0 .

echo "\n\n\nEXECUTING: docker run -t henry.k/cowsay:1.0"
read
docker run -t henry.k/cowsay:1.0 

echo "\n\n\nAbout to log-into the OpenShift:"
read
osc login

echo "\n\n\nEXECUTING: osc new-app --docker-image=henry.k/cowsay:1.0"
read
osc new-app --docker-image=henry.k/cowsay:1.0

echo "\n\n\nEXECUTING: osc new-app mongo"
read
osc new-app mongo

echo "\n\n\nEXECUTING: docker run -t henry.k/new-cowsay:1.0"
read
docker run -t henry.k/new-cowsay:1.0

echo "\n\n\nEXECUTING: osc new-app --docker-image=henry.k/new-cowsay:1.0"
read
osc new-app --docker-image=henry.k/new-cowsay:1.0


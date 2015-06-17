#!/bin/bash
echo EXECUTING: docker build -t henry.k/cowsay:1.0 .
read
docker build -t henry.k/cowsay:1.0 .

echo EXECUTING: docker run -t henry.k/cowsay:1.0 
read
docker run -t henry.k/cowsay:1.0 


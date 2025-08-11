# SPRING BOOT and Docker

## JAVA Version 

java 21.0.7 2025-04-15 LTS

Java(TM) SE Runtime Environment (build 21.0.7+8-LTS-245)

Java HotSpot(TM) 64-Bit Server VM (build 21.0.7+8-LTS-245, mixed mode, sharing)

## Maven version

Apache Maven 3.9.10

## Build project 

mvn clean install

## Generate docker image 

./build.sh

## Run image 

./run.sh

## Test 

curl http://localhost:[PORT]/api/v1/users -H "Accept: application/json" | jq

## Remove all generated images and running container 

./clean.sh

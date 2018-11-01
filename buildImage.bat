#!/bin/bash
docker stop typfrontend
docker image rm typfrontend

alias %cd%=$(pwd)

docker build -t typfrontend .
docker run --rm --name typfrontend -p 3000:4200 -v %cd%/src:/usr/typ/src typfrontend
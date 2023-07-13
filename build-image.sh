#!/bin/bash

#fail on any error
set -eu

#Build the docker image
docker build -f Dockerfile -t .

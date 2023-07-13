#!/bin/bash

#fail on any error
set -eu

#login to your docker hub
docker login --username $DOCKER_HUB_USERNAME --password $DOCKER_HUB_PASSWORD

#Give the docker tag command for a new name
docker tag $IMAGE_TAG $DOCKER_HUB_USERNAME/$DOCKER_HUB_REPO_NAME

#Push the image
docker push $DOCKER_HUB_USERNAME/$DOCKER_HUB_REPO_NAME
#!/bin/sh
docker login --username=$DOCKER_USER --password=$DOCKER_PASSWORD
git clone $REPO
cd devops-heroku-test
docker build -t $DOCKER_USER/$IMAGE_NAME .
docker push $DOCKER_USER/$IMAGE_NAME
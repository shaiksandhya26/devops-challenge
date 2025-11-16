#!/bin/bash

docker stop jenkins-root 2>/dev/null
docker rm jenkins-root 2>/dev/null
docker volume rm jenkins_home 2>/dev/null

echo "Jenkins container and volume cleaned up."

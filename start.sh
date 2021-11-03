#!/bin/bash
# Script preparing environment for docker compose.

# Creates user for artifactory.
useradd -u 1030 artifactory
# Sets permissions (recursively) for the artifactory directory.
chown -R artifactory:artifactory ./volumes/artifactory
# Sets permissions for jenkins directory.
chown -R 1000:1000 ./volumes/jenkins
# Changes into the compose directory
cd compose || exit 1
# Runs docker-compose with flags: detach and build.
docker-compose up -d --build

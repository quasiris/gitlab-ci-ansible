#!/usr/bin/env bash

docker build -t quasiris/gitlab-ci-ansible:latest .
docker push quasiris/gitlab-ci-ansible:latest
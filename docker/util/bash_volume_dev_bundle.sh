#!/bin/bash

sudo docker stop docker_bundle_dev_1; sudo docker rm docker_bundle_dev_1

sudo docker run -it -v docker_bundle_dev:/home/app/repo/shared/bundle \
--name docker_bundle_dev_1 ubuntu:16.04 /bin/bash  -c \
'cd /home/app/repo/shared/bundle; exec "${SHELL:-bash}"'

sudo docker stop docker_bundle_dev_1; sudo docker rm docker_bundle_dev_1

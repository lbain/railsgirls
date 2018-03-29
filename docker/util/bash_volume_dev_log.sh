#!/bin/bash

sudo docker stop docker_log_dev_1; sudo docker rm docker_log_dev_1

sudo docker run -it -v docker_log_dev:/home/app/repo/shared/log \
--name docker_log_dev_1 ubuntu:16.04 /bin/bash -c \
'cd /home/app/repo/shared/log; exec "${SHELL:-bash}"'

sudo docker stop docker_log_dev_1; sudo docker rm docker_log_dev_1

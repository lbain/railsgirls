#!/bin/bash

sudo docker rm $(docker ps -qa --no-trunc --filter "status=exited")


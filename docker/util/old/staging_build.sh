#!/bin/bash

cd ..
sudo docker-compose -f docker-compose.staging.yml build web
cd util

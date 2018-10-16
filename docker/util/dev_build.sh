#!/bin/bash

cd ..
sudo docker-compose -f docker-compose.yml build web
cd util

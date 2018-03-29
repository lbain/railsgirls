#!/bin/bash

cd ..
sudo docker-compose -f docker-compose.staging.yml up web
cd util
#!/bin/bash

cd ..
sudo docker-compose -f docker-compose.staging.yml build ruby_base
cd util

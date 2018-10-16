#!/bin/bash

cd ..
sudo docker-compose -f docker-compose.staging.yml up
cd util
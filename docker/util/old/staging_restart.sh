#!/bin/bash

cd ..
sudo docker-compose -f docker-compose.staging.yml restart
cd util


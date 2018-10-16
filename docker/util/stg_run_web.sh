#!/bin/bash

cd ..
sudo docker-compose -f docker-compose.staging.yml run --user "app" -p 3002:3000 web
cd util
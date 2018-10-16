#!/bin/bash

cd ..
sudo docker-compose -f docker-compose.yml build ruby_base
cd util

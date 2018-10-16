#!/bin/bash

cd ..
sudo docker-compose -f docker-compose.yml run ruby_base
cd util
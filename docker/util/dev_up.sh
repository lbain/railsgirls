#!/bin/bash

cd ..
sudo docker-compose -f docker-compose.yml up web worker
cd util

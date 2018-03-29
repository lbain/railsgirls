#!/bin/bash

cd ..
sudo docker-compose -f docker-compose.yml up worker
cd util
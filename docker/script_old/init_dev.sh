#!/bin/sh

./docker/setup_dev.sh

su -c "/bin/bash -l -c 'RAILS_ENV=${RAILS_ENV} bundle exec rails s -p 3000 -b 0.0.0.0'" app

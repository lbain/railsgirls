#!/bin/bash

./docker/setup_dev.sh

/bin/bash -l -c "rm -f tmp/pids/server.pid && RAILS_ENV=$RAILS_ENV bundle exec rails s -p 3000 -b 0.0.0.0"

#vim
#irb
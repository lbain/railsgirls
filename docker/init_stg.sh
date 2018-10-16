#!/bin/bash

./docker/setup_stg.sh

/bin/bash -l -c "RAILS_ENV=$RAILS_ENV bundle exec rails s -p 3000 -b 0.0.0.0"

#vim
#irb
#!/bin/bash

./docker/wait_web_dev.sh

/bin/bash -l -c "rm -f tmp/pids/server.pid && RAILS_ENV=${RAILS_ENV} bundle exec sidekiq -C config/sidekiq.yml"
#vim

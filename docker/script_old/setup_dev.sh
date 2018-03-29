#!/bin/sh

./docker/change_owner_user.sh

#su -c "/bin/bash -l -c 'echo \"${APP_NAME}\" > .ruby-gemset'" app

su -c "/bin/bash -l -c 'gem install bundler'" app

su -c "/bin/bash -l -c 'RAILS_ENV=${RAILS_ENV} bundle config --global jobs $(($(getconf _NPROCESSORS_ONLN)*2))'" app

su -c "/bin/bash -l -c 'RAILS_ENV=${RAILS_ENV} bundle install'" app

su -c "/bin/bash -l -c 'RAILS_ENV=${RAILS_ENV} bundle install --without production --with test development'" app

./docker/change_owner_user.sh

./docker/start.sh
#vim
#su -c "/bin/bash -l -c 'RAILS_ENV=${RAILS_ENV} bundle config --global'" app
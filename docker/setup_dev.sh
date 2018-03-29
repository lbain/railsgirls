#!/bin/bash

./docker/change_owner_user.sh

##/bin/bash -l -c 'echo \"${APP_NAME}\" > .ruby-gemset'

/bin/bash -l -c "gem install bundler"

/bin/bash -l -c "RAILS_ENV=${RAILS_ENV} bundle config --global jobs $(($(getconf _NPROCESSORS_ONLN)*2))"

/bin/bash -l -c "RAILS_ENV=${RAILS_ENV} bundle install"

/bin/bash -l -c "RAILS_ENV=${RAILS_ENV} bundle install --without production --with test development"

##./docker/change_owner_user.sh

/bin/sh -c "./docker/start.sh"
##vim
##su -c "/bin/bash -l -c 'RAILS_ENV=${RAILS_ENV} bundle config --global'" app
#!/bin/bash

until
    /bin/bash -l -c 'RAILS_ENV=${RAILS_ENV} bundle exec rake about'
##    /bin/bash -l -c 'RAILS_ENV=${RAILS_ENV} bundle check'
    [ $? -eq 0 ]
do
    sleep 2
    echo "Wainting for environment installation..."
done

echo "Environment ready."

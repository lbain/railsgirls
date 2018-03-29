#!/bin/bash

sudo docker stop run_railsgirls2; sudo docker rm run_railsgirls2

sudo docker run -it --name run_railsgirls2 \
     -p 1081:80 \
     -e DOCKERIZED=true \
     -e DB_USERNAME=root \
     -e DB_PASSWORD=root \
     -e DB_HOST_IP=192.168.1.100 \
     -e DB_PORT=3307 \
     -e DB_DATABASENAME=railsgirls \
     -e RAILS_ENV=production \
     -d robertosilvino/railsgirls2:latest \
     /sbin/my_init -- /bin/bash
#     -v "$PWD"/config/nginx:/etc/nginx/sites-available/ \
#     /sbin/my_init --skip-startup-files --quiet -- ls
#     -p 3001:3001 \

#     /bin/bash
#     -v "$PWD"/config/nginx:/etc/nginx/sites-available \
#     -v "$PWD"../../.././:/home/app/tcc-unasus \
#     bundle exec rails s -p 3001 -b '0.0.0.0'
#     /bin/bash

#     -v "$PWD"/volume/stg/config:/home/app/tcc-unasus/config/ \
#     -v "$PWD"/volume/stg/bundle:/home/app/tcc-unasus/bundle/ \
#     -v "$PWD"/volume/stg/public/assets:/home/app/tcc-unasus/public/assets/ \
#     -v "$PWD"/volume/stg/public/uploads:/home/app/tcc-unasus/public/uploads/ \
#     -v "$PWD"/volume/stg/log:/home/app/tcc-unasus/log/ \
#     -v "$PWD"/volume/stg/tmp/cache:/home/app/tcc-unasus/tmp/cache/ \
#     -v "$PWD"/volume/stg/tmp/pids:/home/app/tcc-unasus/tmp/pids/ \
#     -v "$PWD"/volume/stg/tmp/sockets:/home/app/tcc-unasus/tmp/sockets/ \
#     -v "$PWD"/volume/stg/vendor/bundle:/home/app/tcc-unasus/vendor/bundle/ \

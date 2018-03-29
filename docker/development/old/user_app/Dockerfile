#FROM ubuntu:16.04
FROM robertosilvino/railsgirls-dev-base:latest

ARG rails_version=4.2.7.1
ENV RAILS_VERSION ${rails_version}

ARG rails_env=development
ENV RAILS_ENV ${rails_env}

ENV HOME /home/app
ENV APP_NAME repo
ENV APP_DIR "${HOME}/${APP_NAME}"

RUN bash -c "mkdir -p ${APP_DIR}"

USER app

WORKDIR ${APP_DIR}

### COPY repository
COPY --chown=app:app . .

#RUN cp /run/secrets/database.yml ${APP_DIR}/config/.
#COPY docker/config/staging/app_config.yml.erb ${APP_DIR}/config/
#COPY --chown=app:app docker/config/staging/database.yml ${APP_DIR}/config/
COPY --chown=app:app docker/config/database.yml ${APP_DIR}/config/
#COPY docker/config/staging/database.yml.erb ${APP_DIR}/config/
#COPY image/staging/email.yml ${APP_DIR}/config/
#COPY image/staging/secrets.yml ${APP_DIR}/config/

WORKDIR ${APP_DIR}

RUN echo "${APP_NAME}" > .ruby-gemset

###VOLUME ["./docker/development/volumes/bundle:$(gem env home)"]
###rvm gemdir
###gem env gemdir
###cd $(gem env gemdir)
### bundler --version;echo $?

ENV APP_BUNDLE_PATH="$(gem env gemdir)"
RUN /bin/bash -l -c "echo $APP_BUNDLE_PATH"

RUN mkdir -p ${APP_DIR}/public/uploads && \
    mkdir -p ${APP_DIR}/log

USER root

USER app


RUN /bin/bash -l -c "mkdir ${APP_DIR}/shared" && \
    /bin/bash -l -c "ln -s ${APP_DIR}/log ${APP_DIR}/shared/." && \
    /bin/bash -l -c "ln -s ${APP_DIR}/public/uploads ${APP_DIR}/shared/." && \
    /bin/bash -l -c "ln -s $APP_BUNDLE_PATH ${APP_DIR}/shared/bundle"

VOLUME [ "${APP_DIR}/shared/bundle"]
VOLUME [ "${APP_DIR}/shared/log"]
VOLUME [ "${APP_DIR}/shared/uploads"]

# bundle install está dentro do start_server.sh, por causa da
#   montagem do volume do bundle
#
#    /bin/bash -l -c 'RAILS_ENV=${RAILS_ENV} bundle install --without production --with test development'

USER root
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Expose Nginx HTTP service
#EXPOSE 80
EXPOSE 3000

CMD [ "docker/init_dev.sh" ]
#CMD [ "vim" ]


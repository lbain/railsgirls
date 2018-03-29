FROM robertosilvino/railsgirls2-base:latest

RUN addgroup --gid 9999 app \
    && adduser --uid 9999 --gid 9999 --disabled-password --gecos "Application" app \
    && usermod -L app \
    && mkdir -p /home/app/.ssh \
    && chmod 700 /home/app/.ssh \
    && chown app:app /home/app/.ssh

USER app

WORKDIR ${APP_DIR}

COPY --chown=app:app . .
# security issue
RUN rm -rf .git

USER root

RUN /bin/bash -l -c 'chown app:app -R ${APP_HOME}'

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

USER app

EXPOSE 3000

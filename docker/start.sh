#!/bin/sh

echo "Testing database connection..."
# Wait for the database
./docker/wait-for-it.sh $DB_HOST_IP:$DB_PORT --timeout=30 --strict -- echo "Database is up!"

export MYSQL_PWD=$DB_PASSWORD

# testa se o banco está criado
if echo "select now();" | mysql -h $DB_HOST_IP -P $DB_PORT -u $DB_USERNAME $DB_DATABASENAME; then
  echo "Database already created."
else
  echo "Initializing database..."
#  RAILS_ENV=${RAILS_ENV} bundle exec rake db:setup
  if echo "CREATE DATABASE ${DB_DATABASENAME} CHARACTER SET utf8;" | mysql -h $DB_HOST_IP -P $DB_PORT -u $DB_USERNAME; then
    echo "Database successfully initialized."
  else
    echo "Error creating database [${DB_DATABASENAME}]."
  fi
fi

if echo "select now();" | mysql -h $DB_HOST_IP -P $DB_PORT -u $DB_USERNAME $DB_DATABASENAME; then
# testa se banco de dados foi inicializado pela aplicação
# se as tabelas foram criadas
  if echo "select * from schema_migrations;" | mysql -h $DB_HOST_IP -P $DB_PORT -u $DB_USERNAME $DB_DATABASENAME; then
    echo "Database already initialized."
  else
    echo "Initializing database..."
    /bin/bash -l -c 'RAILS_ENV=${RAILS_ENV} bundle exec rake db:setup'
    echo "Database successfully initialized."
  fi

  # executa a migração
  if echo "select * from schema_migrations;" | mysql -h $DB_HOST_IP -P $DB_PORT -u $DB_USERNAME $DB_DATABASENAME; then
    echo "Attempting to database migrate..."
    /bin/bash -l -c 'RAILS_ENV=${RAILS_ENV} bundle exec rake db:migrate'
    echo "Database is up to date."
  fi
fi

unset $MYSQL_PWD


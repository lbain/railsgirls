#!/bin/sh

echo "Changing owner: app:app log..."
mkdir -p log
chown -R app:app log
echo "Owner changed: app:app log"

echo "Changing owner: app:app public/uploads..."
mkdir -p public/uploads
chown -R app:app public/uploads
echo "Owner changed: app:app public/uploads"

echo "Changing owner: app:app shared/bundle..."
chown app:app -R ${HOME}/.rvm/gems
echo "Owner changed: app:app shared/bundle..."

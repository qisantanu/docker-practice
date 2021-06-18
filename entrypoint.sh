#!/bin/sh

# Prepare PostgreSQL
echo "try running the ruby httpd"
ruby -run -e httpd /app -p 8000

if [ "$CONTAINER_ROLE" == "worker" ]
then
  # Run background worker
  bundle exec shoryuken -r ./app/jobs -R -C ./config/shoryuken.yml
elif [ "$CONTAINER_ROLE" == "application" ]
then
  mkdir -p ./tmp/pids
  bundle exec puma -C ./config/puma.rb
else
  echo "Error: unknown CONTAINER_ROLE"
  exit 125
fi

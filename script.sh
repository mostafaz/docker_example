
#! /bin/bash

echo "Starting the magic of docker ..."
echo "Running bundle install.."

docker-compose build
docker-compose run web bundle install --jobs 20
docker-compose stop

docker-compose run web bundle exec rake db:setup
docker-compose stop

echo "You are done!"


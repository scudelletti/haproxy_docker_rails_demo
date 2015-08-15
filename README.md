# HAproxy with Rails App and Postgres running on Docker using Docker Compose

HAProxy Admin Port 70
HAProxy Port 80

#### Preparations
```shell
docker-compose build

docker-compose run app bundle exec rake db:create
docker-compose run app bundle exec rake db:migrate

docker-compose up
```

Now you will be able to access the haproxy which will balance the rails apps which use postgres.

Don't forget to access the right Docker IP.

If you use boot2docker you can run `boot2docker ip`

::whale:

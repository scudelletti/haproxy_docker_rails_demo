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

#### Important files:
* [Dockerfile](https://github.com/scudelletti/haproxy_docker_rails_demo/blob/master/Dockerfile)
* [.dockerignore](https://github.com/scudelletti/haproxy_docker_rails_demo/blob/master/.dockerignore)
* [docker-compose.yml](https://github.com/scudelletti/haproxy_docker_rails_demo/blob/master/docker-compose.yml)
* [haproxy.cfg](https://github.com/scudelletti/haproxy_docker_rails_demo/blob/master/haproxy/haproxy.cfg)


::whale:

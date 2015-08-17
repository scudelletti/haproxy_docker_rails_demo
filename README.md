# HAproxy with Rails App and Postgres running on Docker using Docker Compose

Important Ports:
* HAProxy Admin Port 70
* HAProxy Port 80
* MailCatcher 1080


#### Preparations
```shell
docker-compose build

docker-compose run app bundle exec rake db:create
docker-compose run app bundle exec rake db:migrate

docker-compose up
```

Now you will be able to access the haproxy which will balance the rails apps which use postgres.
Don't forget to access the right Docker IP.

##### Getting Docker's IP
`docker-machine ls`

##### Useful routes
'/' - will add and email on worker and respond with an text
'/debug' - will call pry debugger - Please read Caveats before acessing.
'/sidekiq' - Sidekiq Monitor


#### Important files:

* [Dockerfile](https://github.com/scudelletti/haproxy_docker_rails_demo/blob/master/Dockerfile)
* [.dockerignore](https://github.com/scudelletti/haproxy_docker_rails_demo/blob/master/.dockerignore)
* [docker-compose.yml](https://github.com/scudelletti/haproxy_docker_rails_demo/blob/master/docker-compose.yml)
* [haproxy.cfg](https://github.com/scudelletti/haproxy_docker_rails_demo/blob/master/haproxy/haproxy.cfg)

### Useful commands

* List Env Variables `docker-compose run app env
* Run Tests the -e is Optional `docker-compose run -e "RAILS_ENV=test" app rake test`
* Start just one container `docker-compose up mailcatcher`

### Caveats: Debug

`docker-compose run` creates a TTY session for your app to connect to, allowing interactive debugging. The default `docker-compose up` command does not create a TTY session.

Instead of running docker-compose up run the following command:

`docker-compose run --service-ports app`

Now you'll be able to access the debugger.

:whale:

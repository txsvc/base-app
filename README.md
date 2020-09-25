# Basic RAILS 6 App

A most basic RAILS 6 app with deployment options for

* local development, using Docker for the DB
* Google AppEngine (production)


## Getting Started

This section provides a high-level quick start guide. If you're looking for the
[installation guide](/), you'll want to refer
to our complete [Developer Documentation](/).

### Prerequisites

#### Local

- [Ruby](https://www.ruby-lang.org/en/)


#### Containers

**Linux**

- [Podman](https://github.com/containers/libpod) 1.9.2 or higher
- [Podman Compose](https://github.com/containers/podman-compose) 0.1.5 or higher

**OS X**

- [Docker Desktop for Mac](https://docs.docker.com/docker-for-mac/install/)

### Installation Documentation

[View Full Installation Documentation](/).

## Developer Documentation

[Check out our dedicated docs page for more technical documentation](/).

### Quick Start for local development

### Containers

```shell
docker create --name base-app -e MYSQL_ROOT_PASSWORD=baseapp -e MYSQL_PASSWORD=baseapp -e MYSQL_USER=baseapp -e MYSQL_DB=baseapp -p 33060:3306 mariadb:10.4
```

### Create the database

```shell
bundle exec rake db:create db:migrate
```

### Configuration

```shell
EDITOR=vim bundle exec rails credentials:edit
```

## References

### Code Quality

* https://sorbet.org

### Google Cloud Platform

* https://cloud.google.com/appengine/docs/standard/ruby/concepts
* https://cloud.google.com/ruby/rails/using-cloudsql-mysql
* https://github.com/GoogleCloudPlatform/appengine-ruby
* https://github.com/GoogleCloudPlatform/ruby-docs-samples

### Gems

* https://github.com/doabit/semantic-ui-sass
* https://github.com/thoughtbot/high_voltage
* https://github.com/Shopify/rubocop-sorbet
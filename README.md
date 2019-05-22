# CNAB Explorer

*CNAB Explorer* is web application built on Ruby on Rails and a bit of Vue.js intented to make easy explore contents of CNAB files.

*CNAB Explorer* is built on

- Ruby 2.5
- Ruby on Rails 5.2.1
- PostgreSQL
- Vue.js 2
- Bulma


## Getting Started

### Requirements

Before proceeding make sure you have all the following softwares correctly installed:

- Git
- Ruby 2.5.1
- Docker
- docker-compose
- Bundler

### Setup

Getting up and running is pretty easy and standard if you're running Docker and docker-compose. Follow the 3 steps bellow to get the project setup in your development machine.

1) Get all services up with docker-compose
```sh
$ docker-compose up -d
```
2) Install dependencies and configure database
```sh
$ bin/setup
```
3) Start the server and have fun
```sh
$ bin/rails s
```


## ToDo

- [ ] Deploy to Heroku
- [ ] Setup Travis CI
- [ ] Setup Coveralls and add badges to `README.md`
- [ ] Rename `importations` table to `cnabs` (importation is a really bad name)
- [ ] Properly handle importation/processing errors on front-end (throught websockets)
- [ ] Update `bin/setup` to generate `.env.development.local` and `.env.test.local` files so developer don't have to do it himself :nail_care:

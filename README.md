# EnemGO!

## Built With

---

* Ruby On Rails 5.1
* PostgreSQL 9.6
* Docker

## Setting up EnemGO!

---

### First setup

* Clone this repository
* Create your database.yml file and move to **_config_** directory
* Once created, run the commands:

  ```sh
   1. docker-compose build
   2. docker-compose run --rm server bundle install
   3. docker-compose run --rm server bundle exec rails db:create
   4. docker-compose run --rm server bundle exec rails db:migrate
   5. docker-compose up
  ```

## Our team

* Velder Soares
* Bernardo Rosa
* Esaú Mascarenhas
* Resemblinck Freitas
* Vítor Vaz Andrade
* Diogo Lima
* Antonio Raian


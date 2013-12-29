Coffin Bank
===========

This is a simplified version of banking system.
It helps to provide so-called 'loan' services.

Here is also what you need to know:
* Ruby version: 2.0.0-p247 (specified in .ruby-version along with gemset in .ruby-gemset).
* Database: PostgreSQL 9.2. App is going to use your system account to connect to DB.

To start working do the following:
* Clone this repository.
* Install required Ruby version (in command line):```rvm install ruby-2.0.0-p247```
* cd into repository and install required gems and libraries:```bundle```
* Create database user (in command line):
```
  sudo su postgres
  psql
  create role USERNAME login password 'USERNAME!PASSWORD' superuser;
  \q
```

* Create required databases:```rake db:create db:schema:load db:seed db:test:prepare```
* Run the specs: ```rake rspec```
* Run the server: ```rails s```
* PROFIT!!!
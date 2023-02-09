# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Developed on Windows Subsystem for Linux
Please make sure the following are installed:
Ruby version: 3.0.1
Rails version: 7.0.4

Postgres version: 13.3

How to run:

1. rails db:drop
2. rails db:create
3. rails db:migrate
4. rails s
5. visit localhost:3000/top/confirmed?max_results=3&observation_date=2020-03-24
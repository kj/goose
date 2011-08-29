Goose Software Suite
====================

Goose is a planned badminton software suite for tournament draws/results/entries etc. As I am frequently frustrated by "Tournament Planner", and would like to create a free, simple, logical web based interface.


### Requires Gems

* sinatra
* haml
* sass
* rdiscount
* redis


### Use

Run `./server` to start a production server, `./server-dev` to start a development server (reloads app on refresh). If it's your first time running the software you'll want to set up the redis database. To do this, run `./setup`.

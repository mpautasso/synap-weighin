# Synap Weighin -  Track your weight gain on holidays

## Installation

Synap Weighin is a Rails 4.2.10 application.

Dependencies:

* Ruby 2.3.3
* PostgreSQL
* Bundler
* RVM (Not a mandatory one but makes it much easier for a development environment:)

### RVM

To install:

    $ git clone git@github.com:mpautasso/synap-weighin.git
    $ cd synap-weighin

For the purpose of this document we assume that you have installed the latest stable `rvm` (which at the time of writing is `1.29.3`). And we also assume that you have the Ruby version `2.3.3`.

Now, let's create an `.rvmrc` file to store our rvm configuration and re-use it:

    $ rvm use 2.3.3@synap-weighin --create

In the global gemset for the ruby version you are using you should have `bundler`:

    $ gem install bundler

### Finally run:

    $ bundle install
    $ rake db:create
    $ rake db:migrate
    $ rake db:seed
    $ rails s

And you should be able to browse to [http://localhost:3000/](http://localhost:3000/) and you should see the application.

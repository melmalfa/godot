# Intro to Rails

Learning Objectives

- Explain the difference between a library and a framework
- Explain "Convention over Configuration"
- Explore the [Rails Guides](http://guides.rubyonrails.org/index.html) for documentation on constructing an app
- List the components of MVC
- Diagram the full CRUD request cycle of a resource in Rails

## Ruby on Rails

![:image](http://everythingfunny.org/wp-content/uploads/2012/05/1115.jpg)

Run the following to get started:

```
$ gem install rails
$ rails -h
```

Test that the install went right by doing the following

```
$ cd ~/dev
$ rails new my_first_app
$ cd my_first_app
$ rails generate scaffold Fruit name:string is_ripe:boolean
$ rake db:migrate
$ rails server
```

Now visit "http://localhost:3000/fruits"

**Individually answer the following questions:**

- What did all the above commands create?

Run the command `rails` from outside of a Rails app and from within one.
Does the output change?
- What version of Rails are you running? 2.1.2
- What's the command to create a new Rails application?
rails new my_app
- What is Rails default Database? sqlite3
- How does one configure Rails presets?
- How does one create a new Rails Application with a postgresql database?
rails new_app -d postgresql

## Do the follow
Inside of `dev/wdi`

Create a new Rails application called `sample_app` without Active Record
-rails new sample_app -O
(skips active record files)

Create another new Rails application called `welcome_app` with

- a postgres database inside of `dev/wdi`
- no Javascript

rails new welcome_app -J -D postgresql

Create another new Rails application called `popcorn_app` with

- a postgres database
- no turbolinks
- no test unit

rails new pocorn_app -D postgresql --skip-turbolinks --skip-test-unit


`cd` into `sample_app` and run `rails -h`

What is the command to start the server? server

What port does the server listen on? localhost 3000

What's the command to run the server in a different environment? runner

What command starts a Rails console? console

`rake` is a Ruby program built to run tasks.

Run `rake -h`

What is the command to view all tasks that can be performed?

What tasks can be performed in a Rails app?

What's the command to start the server?

What's the command to enter the console?

What Rake tasks are available by default?

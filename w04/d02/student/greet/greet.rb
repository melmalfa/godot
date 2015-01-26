# Create a program that
# Prompt a user for their name
# Prompt a user for their age
# Print to standard out "Hello, NAME. You are AGE."
require 'redis'
require 'pry'

$redis = Redis.new

$stdout.puts("Hello! What is your name?")

name = $stdin.gets.chomp
$redis.hset("user_info", name)

$stdout.puts("What is your age?")

age = $stdin.gets.to_i
$redis.hset ("user_info", age)

$stdout.puts("Hello, #{name}. You are #{age}.")
binging.pry

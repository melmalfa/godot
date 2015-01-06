# Require the Redis gem
require 'redis'

# instantiate a new Redis instance
$redis = Redis.new({
  :host => "127.0.0.1",
  :port => 6379
})

# Prompt a user for their name
$stdout.puts("What is your name?")
name = $stdin.gets.chomp

# Check if the name is in Redis and store the return value
age = $redis.get(name)

# if we didn't get back nil
if age
  # Print the age
  $stdout.puts("Oh right, you're #{age}")
else # the key/value hasn't been set...
  # Prompt a user for their age
  $stdout.puts("How old are you?")
  age = $stdin.gets.to_i
  # Store the values for next time
  $redis.set(name, age)
  # Print to standard out "Hello, NAME. You are AGE."
  $stdout.puts("Hello #{name}. You are #{age}. See you next time.")
end

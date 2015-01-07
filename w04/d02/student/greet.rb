# Create a program that
# Prompt a user for their name
# Prompt a user for their age
# Print to standard out "Hello, NAME. You are AGE."

$stdout.puts("Hello! What is your name?")

Name = $stdin.gets.chomp

$stdout.puts("What is your age?")

AGE = $stdin.gets.to_i

$stdout.puts("Hello, #{Name}. You are #{AGE}.")

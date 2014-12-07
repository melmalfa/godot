# *Read* through the following code
# Write comments above *each line* explaining what it does

require 'colorize'
require 'pry'
# Methods

def generate_random_number
  (1..10).to_a.sample
end

def alert(message)
  $stdout.puts(message.green)
end

#mcreates ethod called "warn'
def warn(message)
# method prints info to the color
  $stdout.puts(message.red)
end

#creates method 'ask.'
def ask(question)
 # this method prints out a "question >""
  $stdout.puts(question)
  $stdout.print('> ')
  # takes in the answer from standard input
  # and returns the answer to the program
  $stdin.gets.chomp
end

# Main Program

players = {}
# creating a hash called players

#begins a loop
loop do
  # call the ask method to print the question 'name'
  player = ask('Name? ')
  #sets the methods'generate_random number' to a variable called secret_number
  secret_number = generate_random_number
# creates an array within the hash 'players' using the variable 'player'
  players[player] = []
  # players = {
  #   "patricio" => []
  # }
#  calls alert method to print out message in green.
  alert('I\'m thinking of a number between 1 and 10.')

# begins a nested loop
  loop do
    #
    guess = ask('Can you guess it?').to_i
    players[player].push(guess)
    binding.pry
    break if secret_number == guess
    warn("#{guess}? Try again!")
  end

  alert("Great job, #{player}!")
  alert("You guessed in #{players[player].size} guesses.")
  choice = ask('New Game? y/n')
  break if choice.start_with?('n')
end

alert('Goodbye!')

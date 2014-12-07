# *Read* through the following code
# Write comments above *each line* explaining what it does

# calls the gem called 'colorize' (local RUuy library)
require 'colorize'

# variable is set
playing_game = true
# create a hash
players = {}
# start a while loop
while playing_game
# setting a variable that is randomly selecting a number from 1 to 10 and setting it to an array
  secret_number = (1..10).to_a.sample
 #setting the variable guessed as false
  guessed = false
#prints out asking user for a name. cursor appears on same line as the question.
  $stdout.prints('Name? ')
 #setting user's input as a variable called player
  player = $stdin.gets.chomp
  #setting up user inputs as an array
  players[player] = []
#printing a statement asking user to guess a number between 1 and 10.
  $stdout.puts('I\'m thinking of a number between 1 and 10. Can you guess it?')
#setting up a while loop coniditonal on the negative of guessed
  while !guessed
#prints out "greater than". cursor appears on the same line as the previous question
    $stdout.print('> ')
 #setting the variable guess to the user answer and converting to an integer
    guess = $stdin.gets.to_i
  #adding the user guess to the end of the 'player' array inside the players hash
    players[player].push(guess)
#beginning a conditional statement that if the random number is equal to the user's input
    if secret_number == guess
 #set the guessed variable to true
      guessed = true
  #in the case that the secret_number is not equal to the guess / otherwise
    else
   #prints a statement in the color red to prompt the user to guess again and tells them the number they guessed
      $stdout.puts("#{guess}? Try again!".red)
    #completes the if else conditional
    end
#completes the while loop '!guessed'
  end
#prints a ststamenet in the color green congratulating the user (with their previously collected name) and telling them how many times it ook them to guess the correct answer. The array counts how many numbers are in the array in the hash.
  $stdout.puts("Great job, #{player}! You guessed in #{players[player].size} guesses.".green)
#prints out question asking the user to play a new game
  $stdout.puts('New Game?')
 #sets variable playing_game to the user's answer, in all lowercase letters and reducing it to their first letter.
  playing_game = $stdin.gets.chomp.downcase.start_with?('y')
#ends the while loop 'playing_game/'
end
#prints out goodbye statemet
$stdout.puts('Goodbye!')


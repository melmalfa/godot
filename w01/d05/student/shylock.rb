






$stdout.puts("Welcome to the brand new Chatbot lending program . . . ShylockBot! \n Here are the commands you can use to talk to Shylock:\n'Purse' gives you the current amount in Shylock's purse. \n'Ledger' gives you the history of Shylock's lending.")

user_answer=$stdin.gets.chomp

if user_answer == "Purse"
  $stdout.puts("")
elsif user_answer == "Ledger"
  $stdout.puts("")
  else
    $stdout.puts("Shylockbot looks confused.")
end
$stdout.puts(">>")

shyock_purse = [1..10,000]

$stdout.puts(":: " + [variable_for_replies] + "::")




# When you run your script users should be presented with a prompt, >>, so that they know that input is expected
# all of Shylock's actions should be sandwiched between double colons ::
# Examples below

# >> user input
# :: ShylockBots emotions ::
# Return Value
# ShylockBot doesn't respond to unknown commands

# >> lkjlkj
# :: ShylockBot looks confused ::
# Act 1

# ShylockBot starts off with 10,000 ducats.

# >> purse
# ::ShylockBot pulls out his purse::
# 10000 ducats
# Act 2

# ShylockBot can lend money

# >> loan Antonio 50 ducats
# ::ShylockBot gives Antonio 50 ducats::
# - 50

# >> loan Bassanio 25 ducats
# ::ShylockBot gives Bassanio 25 ducats::
# - 25

# >> purse
# ::ShylockBot pulls out his purse::
# 9925 ducats
# Act 3

# ShylockBot keeps track of his loans

# >> ledger
# ::ShylockBot pulls out his ledger::
# Antonio owes me 50 ducats
# Bassanio owes me 25 ducats
# Act 4

# ShylockBot can collect interest from his accounts and set the interest rate

# >> collect interest
# ::ShylockBot collects interest at 35%::
# Antonio now owes me 67.5 ducats
# Bassanio now owes me 33.75 ducats
# >> set interest at 15%
# ::Shylock adjusts his interest rate from 35% to 15%::

# >> collect interest
# ::ShylockBot collects interest at 15%::
# Antonio now owes me 77.63 ducats
# Bassanio now owes me 38.81 ducats
# Act 5

# ShylockBot can collect debts

# >> collect 50 ducats from Antonio
# ::Shylock opens his purse::
# + 50

# >> ledger
# ::ShylockBot pulls out his ledger::
# Antonio owes me 27.63 ducats
# Bassanio now owes me 38.81 ducats

# Act 6

# ShylockBot gets colourful. Loaned amounts should display in red and collected debts should display in green.

# >> loan Bassanio 25 ducats
# ::ShylockBot gives Bassanio 25 ducats::
# - 25 # red

# >> collect 50 ducats from Antonio
# ::Shylock opens his purse::
# + 50 # green
# Act 7

# ShylockBot tracks all interactions

# >> history
# ::Shylock clears his throat::
# Date: 12/4/2014
# Amount: -50
# Debtor: Antonio
# Balance: 9950

# Date: 12/4/2014
# Amount: -25
# Debtor: Bassanio
# Balance: 9925

# Date: 12/5/2014
# Amount: 50
# Debtor: Antonio
# Balance: 9975

def ask(question)
  $stdout.puts(question)
  $stdout.print('>> ')
  $stdin.gets.chomp
end



$stdout.puts("Welcome to the brand new Chatbot lending program . . . ShylockBot! \nHere are the commands you can use to talk to Shylock:\n'Purse' gives you the current amount in Shylock's purse. \n'Loan' initiates the lending process. \n'Ledger' gives you the history of Shylock's lending.  \nCool? \nOk, let's get shylockin!\n Wait . . . Did you say >> Purse? \n::ShylockBot pulls out his purse:: \n10000 ducats\nNow you know where we're starting.\n>>")


shylock_purse = 10000

user_answer=$stdin.gets.chomp

# code to enter lendee_name into hash
# elsif user_answer.includes ("loan")
# collect answer and evaluate to find a name? or third item in an array? create variables and store into a . . . array? to be able to computer for the ledger?
# is it possible to: unless user_answer.includes

while shylock_purse > 0
if user_answer == "Purse" || user_answer == "purse"
  $stdout.puts("::Skylockbot pulls out his purse::\n #{current_purse_amount} ducats.")
    ask
  elsif user_answer == "Loan" || user_answer == "loan"
    $stdout.puts("To whom, dear soul?")
    lendee_name = $stdin.gets.chomp
    $stdout.puts("How much, O wise one?")
    amount_lent = $stdin.gets.chomp.to_i
    shylock_purse - amount_lent
    ask
  elsif user_answer == "Ledger" || user_answer == "ledger"
    $stdout.puts("::ShylockBot pulls out his ledger::\n")
    ask
  else
    $stdout.puts("::Shylockbot looks confused.::")
    ask
  end
end


# for if user answer:  #{[name} owes me #{amount that corresponds to that name} ducats")


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

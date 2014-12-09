# An exercise exercise!
#
# Part 1: Attempt to do ten jumping jacks! Every jump you do uses exactly 15
# points of energy. You begin with one hundred points of energy. If your energy
# falls to 0 or below, then take a rest -- don't do a jumping jack and instead
# regain 5 energy.
#
# Also -- what is it called when we use a variable declared outside of the block
# on the inside of the block?
#




3.times do
  puts "odealy"
end

# same as

3.times {
  puts "odelay"
}

# so

# do end or { } are both blocks


object.method do
  # block is the block of code you want to do
end

fishes = ["shark", "guppie", "goldfish"]
# array of fishes

fishes.each do |fish|
  puts fish
end

# same as

fishes.each {|fish| puts fish }

# |fish| is a block argument
# it's what EACH fish will be referred to as inside the block

["ford", "toyota", "hundai", "subaru"].each do |car|
  puts "i drive a #{car}"
end

# methods are confusing

# a method is a resuable piece of code
# a block is how you can trick it out
# or customize it


energy = 100
def jumping_jacks(number)
  count = 0
  while count < number
    if energy >15
      count += 1
      eergy -= 15
      puts "Did #{count} jumping jacks"
    else
      energy += 5
      puts "Waiting, #{energy}" energy left."
      end
    end
  end

energy = 100
count = 0

10.times do
  if energy <= 0
    energy += 5

    $stdout.puts("You're resting. You have done " + count.to_s + " jumping jacks and your current enery level is " + energy.to_s)
  else
    energy -= 15

    count += 1
    $stdout.puts("You have done " + count.to_s + " jumping jacks and your current enery level is " + energy.to_s)
  end
end

 students.length.times { |i| puts "student #{students[i]}" }

  students.each {|student| puts student}





#
# Stop and do not continue! If you are done, make the print out prettier!
#
# Part 2: Add to the above a countdown of reps left!
#
# Also -- what is the return value of the .times method?
#

#
# Stop and do not continue! If you are done, make the print out prettier!
#
# Part 3: Rewrite the above exercise to happen in three groups of ten, counting
# down from 30 total, with a small breather in between that adds 25 energy
# points.

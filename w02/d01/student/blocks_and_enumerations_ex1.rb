# prints hip hip hooray three times using a loop

# x=3

# # while x > 0
#   $stdout.puts("hip hip hooray!")
#    x-1
#    break
# end
# my try is not right!!


def print_hip_hip_hooray_three_times
  i=0
  while i < 3
    $stdout.puts("Hip hip, hooray!")
    i += 1
  end
end

def print_hip_hip_hooray(num_of_times)
  i=0
  while i < (num_of_times)
    $stdout.puts("Hip hip, hooray!")
    i += 1
  end
end



# Strings and Arrays
#
# 1. Write the Ruby to split the string `contenders` into an array of 4 items.

contenders = "Alabama, Florida State, Oregon, Ohio State"
contenders.split ", "
#tested

# 2. Write the Ruby to turn the array `contenders` into the string:
#    "Alabama, Florida State, Oregon, Ohio State are in the playoffs."

contenders = ["Alabama", "Florida State", "Oregon", "Ohio State"]
$stdout.puts(contenders.join (", ") + " are in the playoffs.")

# Data Structures
#
# Write the Ruby to discover what type of data structure the variable
# `contenders` is.

contenders.class

# Arrays
#
# 1. Use Ruby to create an array named `contenders` in TWO DIFFERENT WAYS with
#    the following items:
#      a. "Alabama"
#      b. "Florida State"
#      c. "Texas Christian University (TCU)"
#      d. "Baylor"

contenders =["Alabama", "Florida State", "Texas Christian University (TCU)", "Baylor"]

contenders =["a. Alabama", "b. Florida State", "c. Texas Christian University (TCU)", "d. Baylor"]



# 2. Access the 3rd item in the array `contenders`.

# 3. Set the 4th item as "Texas Christian University (TCU),"
#    and the 3rd item as "Oregon."

# 4. Print the number of items in the array.

# 5. Remove the last item in the array, then add another item to the end of the
#   array that is the string "Ohio State."

# 6. Add the number 1 to the beginning of the array, then remove the first item
#    in the array and print it.

# Hashes
#
# 1. Use Ruby to create a "hash" named `contenders` with the pairs:
#      a. "Alabama" and "SEC"
#      b. "Florida State" and "ACC"
#      c. "Texas Christian University (TCU)" and "Big 12"
#      d. "Baylor" and "Big 12"
#      e. "Oregon" and "Pac-12"
#      f. "Ohio State" and "Big Ten"

# 2. Access the value with the key "Baylor."

# 3. Set the value with the key "Ohio State" to "Big 10."

# 4. List the unique teams (keys) in the hash. List the unique values
#    (conferences) in the hash.

# Loops
#
# 1. Use a Ruby while loop to print out every item in an array in all capitals.

# 2. Use a basic Ruby loop (loop do; ... end) and a break statement to do the
#    above.

# Methods
#
# Define a new method that takes an array of strings as input. It prints to the
# standard output every item in the array followed by the words: " might win!",
# unless the string's contents is "Ohio State", in which case it adds the words
# " will win!". Finally, it returns the number of items in the array.

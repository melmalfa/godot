require_relative './bond_data'

# 1. Combine your knowledge of iteration and arithmetic to determine the cumulative gross of all the Bond films. Save it to a sensibly-named variable.

cumul_gross = []
BOND_DATA.each do |thing|
  cumul_gross.push (thing[:gross].gsub("$", "").gsub(",","").to_i)
end

bond_sum = 0

cumul_gross.each do |sumthin|
  puts(bond_sum += sumthin)
end

# 1. Create a new array with the names of the all actors who have ever played Bond, but with no duplicates. (One Roger Moore is more than enough.) Assign it to a sensibly-named variable.

# 1. Create a new array of strings from `BOND_DATA` with the names of al the Bond films. Assign it to a sensibly-named variable.

# 1. Create a new array of hashes of only the bond films released on odd-numbered years. Assign it to a sensibly-named variable.

# 1. Create a variable called `worst_grossing_bond`. Use all the tools at your disposal (and perhaps one or two you have yet to discover) to iterate through all the films and return the film with the lowest gross. Store the returned film hash in the variable `worst_grossing_bond`.

# 1. Similarly, create a variable called `highest_grossing_bond` and use your programming powers to return the highest grossing film hash, storing it to `highest_grossing_bond`.

# Create a new array with the names of the all actors who have ever played Bond, but with no duplicates. (One Roger Moore is more than enough.) Assign it to a sensibly-named variable.

# Create a new array of strings from BOND_DATA with the names of al the Bond films. Assign it to a sensibly-named variable.

# Create a new array of hashes of only the bond films released on odd-numbered years. Assign it to a sensibly-named variable.


# Create a variable called worst_grossing_bond. Use all the tools at your disposal (and perhaps one or two you have yet to discover) to iterate through all the films and return the film with the lowest gross. Store the returned film hash in the variable worst_grossing_bond.






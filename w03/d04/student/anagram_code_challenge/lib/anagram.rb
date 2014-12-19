

def anagram?(x,y)
  x1 = x.chars.sort.join
  y1 = y.chars.sort.join
  if x1 = y1
    true
  else
    false
  end

end

# result = find_anagrams("packers", ["vikings", "bears", "lions"])

def find_anagrams(x,array)
  x1 = x.chars.sort.join
  array_letters = []
  array.each do |word|
    if x1 == word.chars.sort.join

  end
end



# "packers", ("vikings", "bears", "lions")

class Cipher

  #   def initialize
  # end

  def self.encode(word)
   word.tr("abcdefghijklmnopqrstuvwxyz", "nopqrstuvwxyzabcdefghijklm" )
  end

end

Cipher.encode("hello")
# # => "uryyb"

Cipher.encode("peter")
# # => "crgre"

Cipher.encode("baby got back")
# => "onol tbg onpx"
Cipher.encode("baby")
# => "onol"
Cipher.encode("got")
# => "tbg"
Cipher.encode("back")
# => "onpx"

# why is the following thinking wrong?
# attr_accessor :word
#   def initialize  (word)
#     @word = word
#   end


# Plain:    abcdefghijklmnopqrstuvwxyz
# Cipher:   nopqrstuvwxyzabcdefghijklm

# ## Directions:

# For the class `Cipher`, implement a class method `encode` that takes a word as an argument and returns its ciphertext using ROT13.

# Plan first. Write out step by step, in plain English, what needs to happen.

# ## Bonus

# Expand your Ruby method so that it can take a string with spaces, allowing you to encode and decode entire sentences, not just words.
